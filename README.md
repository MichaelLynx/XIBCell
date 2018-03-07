# XIBCell
用XIB创建tableViewCell的方法



1. 创建附带xib的UITableViewCell，在xib上设置自己想要的布局，并将其作为属性通过xib拖到cell的.m文档；

2. 设置重用标志：在xib的identifier选项上填写想要使用的重用标志（此处使用`xibCell`作为重用标志），该标志需要和创建UITableView处的【通过nib注册cell对象】及协议方法``-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath``里的重用标识皆为同一个；

3. 在创建UITableView处使用如下代码，通过nib注册附带xib的cell：
```
//cellID为重用标识，采用static修饰，本文档处为xibCell，根据喜好自行设置

/** 加载xib 返回nib对象*/
UINib * cellNib = [UINib nibWithNibName:@"NotiTableViewCell" bundle:nil];
/** 通过nib对象，注册cell，设置重用*/
[_myTableView registerNib:cellNib forCellReuseIdentifier:cellID];

```

4. 在``-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath``设置cell的内容：
```

NotiTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
NSString * tmpString = [NSString stringWithFormat:@"%ld",indexPath.row];
UIImage * theImage = [UIImage imageNamed:tmpString];
//在cell的.h文档自行设置方法，用于更改cell上控件的属性
[cell BSGSetImage:theImage leftLabel:tmpString rightLabel:tmpString];
return cell;
```




ps：
如果创建的自定义cell没有xib则自行新建后，需在cell的`custom class`-`class`里设置关联的cell类名；重用标志仍然是必须的。







