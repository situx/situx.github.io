---
layout: post
title: Windows and Audits
# date element overrides date in title format.
date: 2018-3-19
tag:
  - Administrator
  - Windows
  - OpenAudit
---

[OpenAudit](https://www.open-audit.org), even in its community edition can be a tremendously helpful tool to keep an eye on what your companies IT possessions are. It can keep track of warranty issues, neccessary software updates, installed hardware and much more that you would appreciate when you want to give your manager an overview of where to invest next in terms of IT infrastructure. OpenAudit offers SNMP and WMI discovery of devices which in our case was not an ideal solution, as SNMP and WMI are blocked for security reasons. Instead we created a group policy in our active directory that would execute the audit script whenever a user logged in. And in fact, this can be a great solution for you, as updates to the Audit system occur on a frequent basis. What we did discover however is, that not all devices were submitting their audits regularly. A little debugging in the Audit script showed the following common error:

```vbs
"Error with http request. Audit not submitted."
```

So what the OpenAudit script does is simply to send an XML document (the Audit report) as a HTTP POST request to the OpenAudit server which would then process it and insert it into the SQL database. Clearly, the mistake was in the part where the http request was executed, so an excellent idea would be to create a simple testcase to reproduce the error:

```vbs

```

```vbs
"Error with http request. Audit not submitted."
```