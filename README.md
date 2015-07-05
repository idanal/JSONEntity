# JSONEntity
JSONEntity is a category for NSObject to convert JSON to Entity

# Usage example
  
    ClassA *a = [ClassA new];
    a.str = @"aaaa";
    
    ClassB *b = [ClassB new];
    b.num = 1234;
    b.a = a;
    b.classA = a;
    b.list = @[a];
    
    NSDictionary *d = [b toDict]; //Convert to dictionary
    
    ClassB *b2 = [ClassB fromDict:d map:@{@"a":@"ClassA",@"list":@"ClassA"}]; //Convert to entity
    ClassA *a = [b2.list firstObject];

More detail see the demo pls
