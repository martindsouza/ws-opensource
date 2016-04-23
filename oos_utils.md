# Open Source Workshop: OOS Utils

[OOS Utils](https://github.com/OraOpenSource/oos-utils) is a common set of utility functions to help with your PL/SQL and APEX development. _Note: this product is still in beta_

In this section you will install and use OOS Utils for both PL/SQL and APEX development

## Install

- Drag and drop `oos_utils/install/oos_utils_install.sql` into SQL Developer.
- Hit `F5` to run the script which will install OOS Utils.

All the OOS Utils objects are prefixed with `oos_util`.

## Documentation

All the documentation for OOS Utils can be found in the [`docs`](https://github.com/OraOpenSource/oos-utils/tree/master/docs) folder. There is a nice way to view the same documentation from [this site](http://oos-utils.readthedocs.org/en/latest/README/). They are both synced so updates to the `docs` folder are updated on the readthedocs site.


## PL/SQL Tools

This section will highlight some of the tools that are in OOS Utils. Due to time constraints not all of them are covered.

### Assert

At the beginning of a PL/SQL method the parameters are validated. For example if a parameter, `p_pct` is to be between 0 and 100 then you want the procedure to stop if anything out of that range is entered.

Most of the time the validation code looks like:

```sql
...

if not p_pct between 1 and 100 then
  raise_application_error(-20001, 'Percentage must be between 1 and 100');
end if;

...
```

The [`assert`](http://oos-utils.readthedocs.org/en/latest/oos_util/#assert-procedure) procedure takes care of some of the repetitive code for such validations.

Modify the code below to use the `oos_util.assert` procedure instead.

```sql
declare
  p_pct pls_integer := 999;
begin
  if not p_pct between 1 and 100 then
    raise_application_error(-20001, 'Percentage must be between 1 and 100');
  end if;
end;
/
```

### Converting to string
Using the [`oos_util_string`](http://oos-utils.readthedocs.org/en/latest/oos_util_string/) package, modify the following code so that it compiles and displays the string values for each type.

```sql
declare
begin
  dbms_output.put_line(oos_util_string.to_char(sysdate));
  dbms_output.put_line(oos_util_string.to_char(true));
  dbms_output.put_line(oos_util_string.to_char(false));
  dbms_output.put_line(oos_util_string.to_char(systimestamp));
end;
/
```

### Reversing `listagg`

[`listagg`](http://docs.oracle.com/cd/E11882_01/server.112/e41084/functions089.htm#SQLRF30030) is a neat function that converts rows of data in a column into a delimeted list.

```sql
select listagg(e.ename, ',') within group (order by e.ename)
from emp e
;
```

Using the [`oos_util_string`](http://oos-utils.readthedocs.org/en/latest/oos_util_string/) package, copy the string produced from the above query to _unagg_ the list. I.e. change the comma delimited list back into rows.

In APEX this can be very useful when using a multi select list and querying with the values from it as it is a colon (`:`) delimeted list.

### Truncating String

When displaying a report sometimes the requirements state to trim a string if it exceeds a certain amount of characters and then add an ellipsis (`...`). The query usually looks something like:

```sql
select
  case
    when length(:my_string) > 100 then
      substr(:my_string, 1,3) || '...'
    else
      :my_string
  end my_string
from dual
;
```

This does work however it poses two issues. First is that you need to code it each time, and the second is that it does a hard cut at 100 characters. It can be difficult to tell if it cut halfway through a word or not. `oos_util_string` has a `truncate` which handles these issues.

Run the following code and modify both the `p_length` and `p_by_word` parameters to see the differences

```sql
select
  oos_util_string.truncate(
    p_str => ad.comments,
    p_length => 30,
    p_by_word => 'N') trunc_comments,
  ad.comments org_comments
from apex_dictionary ad
;
```


## APEX Tools

OOS Utils has an entire package dedicated to APEX.

### Developer Mode

Sometimes you may only want to display content when you are developing an APEX. An example of this is if you have a custom APEX error function that displays a user friendly message. When developing the application you may want to dump all the content on the screen to help the developer find the bug.

On P10 there is a region at the bottom of the page to display all the items in session state and their values. For obvious reasons you only want to display this while developing the application. Modify the region's condition to only display when in developing.

_Note: The purpose of this exercise is just to demo the appropriate method. In most applications a Build Option called `DEV_ONLY` is created and turned on/off for development._


### Sessions

When developing more complex APEX applications you may need use [APEX Collections](https://docs.oracle.com/cd/E59726_01/doc.50/e39149/apex_collection.htm#CACFAICJ). If you're unfamiliar with APEX Collections they are a temporary "space" to store data that is only valid for a user's session.

APEX Collections are great but can be a pain to debug as they are the data is restricted to a user's given APEX session. To highlight this run the following query in SQL Developer:

```sql
select *
from apex_collections
;
```

You'll see no rows, regardless what's in the table. To highlight this point, run P10 `APEX: Collections`, and click the `Create Collection` button. The page should reload and and the collection data is present in the Interactive Report (`select * from apex_collections`). In SQL Developer re-run the above query. Again you'll see no rows.

As you can imagine this can be a pain to debug in APEX, especially when you have views that use APEX Collections and it's embedded in your packaged code.

To view APEX specific content in SQL Developer run the following code using your current APEX session:

```sql
declare
begin
  oos_util_apex.join_session(p_session_id => :app_session);
end;
/
```

Again, re-run the select statement from `apex_collections` in SQL Developer. You should notice some data returned.

A few caveats with this procedure:

- To connect to a new APEX session you must disconnect your SQL connection and reconnect
- The Session State values of APEX items are taken at the time that you joined the session. They will no longer reflect any changes in the application.

#### Exercise

- Now that you've joined an APEX session in SQL Developer, write and execute a block of code in SQL Developer to:
  - Delete all Collections
  - Create a new collection called `DEPTS` which is a simple query from the `dept` table.
    - Hint: Look at `P10` processes for code samples
    - Hint: `commit` your changes
- View the collection change in SQL Developer
- Refresh the IR on `P10` and you should see the change.
