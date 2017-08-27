//
//  main.m
//  AlogrithmAll
//
//  Created by keso on 15/5/27.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MaxCommoDivisor.h"
#import "Recursive.h"
#import "StackOperation.h"
#import "Stack.h"
#import "Queue.h"
#import "Demo.h"
#import "StackSum.h"
#import "DynamicUnion.h"
#import "DynamicUnionWeight.h"
#import "MySort.h"
#import "PriorityQueue.h"
#import "NSStringUtil.h"
#import "SequenceTable.h"
#import "BinarySearchTable.h"
#import "Search.h"
#import "BinarySearchTree.h"
#import "RedBlackTree.h"
#import "HashTable.h"
#import "LinearHashTable.h"
#import "Graph.h"
#import "DepthFirstSearch.h"
#import "DepthFirstPath.h"
#import "BreadthFirstPath.h"
#import "GraphCC.h"
#import "GraphCycle.h"
#import "GraphTwoColor.h"
#import "Digraph.h"
#import "DirectedDFS.h"
#import "DirectedCycle.h"
#import "TopologicalSort.h"
#import "KosarajuCC.h"
#import "KeyIndexSort.h"
#import "LSD.h"
#import "MSD.h"
#import "Quick3String.h"
#import "NSString+Reverse.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //        MaxCommoDivisor  *commonDivisor=[[MaxCommoDivisor alloc]init];
        //        NSInteger  result=[commonDivisor maxDivisor:45 secondNumber:72];
        //        NSLog(@"最大的公约数%ld",(long)result);
        //
        //        NSLog(@"递归最大的公约数%ld",(long)[commonDivisor maxmodRecursive:1397 secondNumber:2413]);
        //
        //        NSLog(@"递归最大的公约数%ld",(long)[commonDivisor maxDivisor:1397 secondNumber:2413]);
        //
        //                NSLog(@"递归最大的公约数%ld",(long)[commonDivisor maxLogic:14 secondNumber:12]);
        //
        //        Recursive *recursive=[[Recursive alloc]init];
        //        NSMutableArray *arr=[[NSMutableArray alloc]initWithObjects:@"a",@"b",@"c", nil];
        //        [recursive printOutNumber:125];
        //        [recursive allRange:arr start:0];
        //
        //        NSLog(@"斐波那契数列求值:%ld", (long)[recursive simpleRecursive:5]);
        //        NSLog(@"幂的求值:%ld", (long)[recursive power:2 count:5]);
        //        /Users/keso/Desktop/Code/AlogrithmAll/AlogrithmAll/main.m:38:30:
        
        //        /Users/keso/Desktop/Code/AlogrithmAll/AlogrithmAll/main.m:38:60: Data argument not used by format string
        //
        //        Recursive *recursive=[[Recursive alloc]init];
        //        [recursive  reverseNumber:725836];
        //        NSMutableArray  *array=[[NSMutableArray alloc]initWithCapacity:10];
        //        for (NSInteger i=0; i<10; i++) {
        //            [array addObject:[NSNumber numberWithInteger:i]];
        //        }
        //          NSLog(@"ddd");
        //       NSInteger result=[recursive  binarySearch:array number:3 start:0 endIndex:array.count-1];
        //        NSLog(@"输出的结果:%ld",(long)result);
        
        //        StackOperation *operation=[[StackOperation alloc]init];
        //        NSLog(@"算术表达式最终的结果为:%ld", [operation operationExpression:@"(1+((2+4)*(4*5)))"]);
        
        //        [recursive swap3:100 secondNumber:200];
        //        NSUInteger  value=Initing|GoodMan;
        //        if (value&Initing) {
        //            NSLog(@"Initing成功啦");
        //        }
        //        //000000
        //        if (value&GoodMan) {
        //            NSLog(@"GoodMan显然是不成功的");
        //        }
        ConnnectionState  value=Initing|GoodMan;
        if (value==Initing) {
            NSLog(@"Initing成功啦");
        }
        //000000
        if (value==GoodMan) {
            NSLog(@"GoodMan显然是不成功的");
        }
        
        
        //        Stack  *stack=[[Stack alloc]init];
        //        Node *first=[[Node alloc]init];
        //        first.value=@"iOS技术交流群:228407086";
        //        first.next=NULL;
        //        stack.first=first;
        //        [stack push:@"FlyElephant"];
        //        [stack push:@"博客园"];
        //        [stack push:@"keso"];
        //        [stack remove:@"keso"];
        //        NSLog(@"出栈:%@",stack.pop);
        //        NSLog(@"出栈:%@",stack.pop);
        //        NSLog(@"出栈:%@",stack.pop);
        //        NSLog(@"出栈:%@",stack.pop);
        
        
        
        //        Queue  *queue=[[Queue alloc]init];
        //        [queue enqueue:@"iOS技术交流群:228407086"];
        //        [queue enqueue:@"FlyElephant"];
        //        [queue enqueue:@"博客园"];
        //        [queue enqueue:@"keso"];
        //        [queue remove:@"keso"];
        //        NSLog(@"出队列:%@",queue.dequeue);
        //        NSLog(@"出队列:%@",queue.dequeue);
        //        NSLog(@"出队列:%@",queue.dequeue);
        //        NSLog(@"出队列:%@",queue.dequeue);
        //        Demo  *demo=[[Demo alloc]init];
        //
        //        demo.first=@"第一个字符串";
        //        demo.second=demo.first;
        //        demo.first=@"";
        //        demo.second=@"第二个字符串";
        //        NSLog(@"second最后的值为:%@",demo.second);
        //        NSLog(@"second最后的值为:%@",demo.first);
        
        //        StackSum  *sum=[[StackSum alloc]init];
        //        NSLog(@"大整数相加的结果为:%ld", [sum sum:9999999 secondNumber:888]);
        //        NSLog(@"iOS技术交流群:228407086");
        //        Reverse  *reverse=[[Reverse alloc]init];
        //        [reverse reverse];
        //        NSLog(@"最终输出的结果为:%@",[reverse reverse1:@"http://www.cnblogs.com/xiaofeixiang"]);
        //        NSLog(@"iOS技术交流群:228407086");
        //           DynamicUnionWeight *dynamicUnion=[[DynamicUnionWeight alloc]init];
        
        
        //        DynamicUnion  *dynamicUnion=[[DynamicUnion alloc]init];
        //        [dynamicUnion initData:10];
        //        NSMutableArray *dataSource=[[NSMutableArray alloc]initWithCapacity:10];
        //        [dataSource addObject:@"4,3"];
        //        [dataSource addObject:@"3,8"];
        //        [dataSource addObject:@"6,5"];
        //        [dataSource addObject:@"9,4"];
        //        [dataSource addObject:@"2,1"];
        //        [dataSource addObject:@"8,9"];
        //        [dataSource addObject:@"5,0"];
        //        [dataSource addObject:@"7,2"];
        //        [dataSource addObject:@"6,1"];
        //        [dataSource addObject:@"1,0"];
        //
        //        for (NSInteger i=0; i<[dataSource count]; i++) {
        //            NSString *node=[dataSource objectAtIndex:i];
        //            NSInteger a=[[node substringWithRange:NSMakeRange(0, 1)] integerValue];
        //            NSInteger b=[[node substringWithRange:NSMakeRange(2, 1)] integerValue];
        //            if ([dynamicUnion connected:a secondNumber:b]) {
        //                continue;
        //            }
        //            [dynamicUnion dynamicUnion:a secondNumber:b];
        //            NSLog(@"%ld---%ld",a,b);
        //        }
        //        NSLog(@"%ld已存在连接",dynamicUnion.count);
        
        //        NSMutableArray *arr=[[NSMutableArray alloc]initWithCapacity:10];
        //        [arr addObject:@"6"];
        //        [arr addObject:@"3"];
        //        [arr addObject:@"2"];
        //        [arr addObject:@"8"];
        //        [arr addObject:@"9"];
        //        [arr addObject:@"10"];
        //        [arr addObject:@"4"];
        //        [arr addObject:@"5"];
        //        [arr addObject:@"1"];
        //        MySort  *sort=[[MySort alloc]init];
        //
        //        NSMutableArray  *resultArr= [sort shellSort1:arr];
        //
        //        for (NSInteger i=0; i<[resultArr count]; i++) {
        //            NSLog(@"%@",[resultArr objectAtIndex:i]);
        //        }
        //        NSLog(@"iOS技术交流群:228407086");
        //        NSLog(@"原文地址:http://www.cnblogs.com/xiaofeixiang");
        
        //        MySort  *sort=[[MySort alloc]init];
        //        NSMutableArray *tempArr=[[NSMutableArray alloc]initWithCapacity:10];
        //        for (NSInteger i=0; i<8; i++) {
        //            [tempArr addObject:[NSNull null]];
        //        }
        //        sort.tempArr=tempArr;
        //        [sort mergeSort:arr lowIndex:0 highIndex:arr.count-1];
        //        MySort  *sort=[[MySort alloc]init];
        //        [sort quickSort:arr lowIndex:0 highIndex:arr.count-1];
        //        for (NSInteger i=0; i<[arr count]; i++) {
        //            NSLog(@"数值:%@",arr[i]);
        //        }
        
        
        //        PriorityQueue  *queue=[[PriorityQueue alloc]init];
        //        NSMutableArray *arr=[[NSMutableArray alloc]initWithCapacity:10];
        //        [arr addObject:[NSNull null]];
        //        [arr addObject:@"8"];
        //        [arr addObject:@"5"];
        //        [arr addObject:@"6"];
        //        [arr addObject:@"2"];
        //        [arr addObject:@"3"];
        //        [arr addObject:@"4"];
        //        queue.dataSource=arr;
        //        queue.maxIndex=[arr count]-1;
        //        [queue insert:@"7"];
        ////        [queue deleteMax];
        //        for (NSInteger i=1; i<[queue.dataSource count]; i++) {
        //            NSLog(@"数值:%@",queue.dataSource[i]);
        //        }
        //        NSLog(@"iOS技术交流群:228407086");
        //        NSLog(@"原文地址:http://www.cnblogs.com/xiaofeixiang");
        //
        
        
        //        PriorityQueue  *queue=[[PriorityQueue alloc]init];
        //        NSMutableArray *arr=[[NSMutableArray alloc]initWithCapacity:10];
        //        [arr addObject:[NSNull null]];
        //        [arr addObject:@"1"];
        //        [arr addObject:@"2"];
        //        [arr addObject:@"3"];
        //        [arr addObject:@"4"];
        //        [arr addObject:@"5"];
        //        [arr addObject:@"6"];
        //        [arr addObject:@"7"];
        //        queue.dataSource=arr;
        //        queue.maxIndex=[arr count]-1;
        //        [queue sort];
        //        for (NSInteger i=1; i<[queue.dataSource count]; i++) {
        //            NSLog(@"数值:%@",queue.dataSource[i]);
        //        }
        
        
        //         PriorityQueue  *queue=[[PriorityQueue alloc]init];
        //
        //        PriorityQueue  *queue2=queue;
        //
        //        NSString  *str1=[NSString stringWithFormat:@"ios  coder"];
        //        NSString  *str2=str1;
        //        NSLog(@"Queue地址:%@---Queue2地址:%@",queue,queue2);
        //        NSLog(@"字符串:%p--字符串:%p",str1,str2);
        
        //        NSString  *name=@"博客园-FlyElephant";
        //        NSString  *url=@"博客地址:http://www.cnblogs.com/xiaofeixiang";
        ////        NSLog(@"转换为小写字符串:%@",[name lowercaseString]);
        ////        NSLog(@"转换为大写字符串:%@",[url uppercaseString]);
        //
        //        NSStringUtil  *util=[[NSStringUtil alloc]init];
        //        NSLog(@"小写转换:%@",[util toLower:name]);
        //        NSLog(@"大写转换:%@",[util toUpper:url]);
        //        NSArray   *firstArr=[[NSArray alloc]initWithObjects:@"3",@"5",@"8",@"10", nil];
        //        NSMutableArray  *secondArr=[[NSMutableArray alloc]init];
        //
        //        [secondArr addObject:[NSNumber numberWithInteger:1]];
        //        for (NSInteger  i=1; i<[firstArr count]; i++) {
        //            [secondArr addObject:[NSNumber numberWithInteger:[secondArr[i-1] integerValue]*[firstArr[i-1] integerValue]]];
        //        }
        
        //        NSInteger  temp=1;
        //        for (NSInteger  i=[firstArr count]-2; i>=0; i--) {
        //            temp *=[firstArr[i+1] integerValue];
        //            secondArr[i]=[NSNumber numberWithInteger:temp*[secondArr[i] integerValue]];
        //        }
        //        for (NSInteger i=0; i<[secondArr count]; i++) {
        //            NSLog(@"中间变量交换:%@",secondArr[i]);
        //        }
        //        NSLog(@"iOS技术交流群:228407086");
        //        NSLog(@"原文地址:http://www.cnblogs.com/xiaofeixiang");
        
        
        //        secondArr[0]=[NSNumber numberWithInteger:1];
        //        for (NSInteger  i=[firstArr count]-1; i>=1; i--) {
        //            secondArr[i]=[NSNumber numberWithInteger:[secondArr[0] integerValue]*[secondArr[i] integerValue]];
        //            secondArr[0]=[NSNumber numberWithInteger:[secondArr[0] integerValue]*[firstArr[i] integerValue]];
        //        }
        //
        //        for (NSInteger i=0; i<[secondArr count]; i++) {
        //            NSLog(@"当前的值:%@",secondArr[i]);
        //        }
        //        SequenceTable  *table=[[SequenceTable alloc]init];
        //        [table put:@"FlyElephant" value:@"http://www.cnblogs.com/xiaofeixiang"];
        //        [table put:@"技术交流群" value:@"228407086"];
        //        NSLog(@"技术交流群:%@",[table get:@"技术交流群"]);
        //
        //        BinarySearchTable  *binaryTable=[[BinarySearchTable alloc]init];
        //        [binaryTable put:@"3" value:@"FlyElephant"];
        //        [binaryTable put:@"9" value:@"keso"];
        //        [binaryTable put:@"10" value:@"博客园"];
        //        [binaryTable put:@"0" value:@"228407086"];
        //        NSString  *temp=[binaryTable get:@"3"];
        //        NSLog(@"博客园:%@",temp);
        //        MySort  *sort=[[MySort alloc]init];
        //        NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithObjects:@"2",@"3",@"4",@"5",@"2",@"1", nil];
        //        [sort selectorSort:dataSource];
        //        for (NSInteger i=1; i<[dataSource count]; i++) {
        //            if ([dataSource[i] isEqualTo:dataSource[i-1]]) {
        //                NSLog(@"重复的数字:%@",dataSource[i]);
        //                break;
        //            }
        //        }
        
        //        Search  *search=[[Search alloc]init];
        ////        NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithObjects:@"2",@"3",@"1",@"0",@"2",@"5",@"3", nil];
        //
        //        NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithObjects:@"2",@"3",@"1",@"4",@"5", nil];
        ////        NSMutableArray  *result=[search duplicateSort:dataSource];
        ////        for (id  object in result) {
        ////            NSLog(@"重复的数字:%@",object);
        ////        }//        NSLog(@"重复的数字:%ld",index);
        ////        NSLog(@"技术交流群:%@",@"228407086");
        ////        NSLog(@"重复的数字:%ld",(long)[search duplicate:dataSource]);
        //        NSInteger  index=[search indexOf:dataSource element:@"1"];
        //        NSLog(@"元素的位置:%ld",index);
        
        //
        //                SequenceTable  *table=[[SequenceTable alloc]init];
        //                [table put:@"FlyElephant" value:@""];
        //                [table put:@"技术交流群" value:@"228407086"];
        //                NSLog(@"技术交流群:%@",[table get:@"技术交流群"]);
        
        //        BinarySearchTree  *binaryTree=[[BinarySearchTree alloc]init];
        //        [binaryTree put:@"3" value:@"FlyElephant"];
        //        [binaryTree put:@"9" value:@"http://www.cnblogs.com/xiaofeixiang"];
        //        [binaryTree put:@"10" value:@"博客园"];
        //        [binaryTree put:@"0" value:@"228407086"];
        //        NSString  *temp=[binaryTree get:@"9"];
        //        NSLog(@"二叉查找树:%@",temp);
        
        //        RedBlackTree  *redBlackTree=[[RedBlackTree alloc]init];
        //        [redBlackTree put:@"3" value:@"FlyElephant"];
        //        [redBlackTree put:@"9" value:@"原文地址:http://www.cnblogs.com/xiaofeixiang"];
        //        [redBlackTree put:@"10" value:@"博客园"];
        //        [redBlackTree put:@"0" value:@"技术交流:228407086"];
        //        NSString  *temp=[redBlackTree get:@"9"];
        //        NSLog(@"红黑树:%@",temp);
        
        
        //        HashTable  *hashTable=[[HashTable alloc]initWithData:5];
        //        [hashTable putData:@"3" value:@"FlyElephant"];
        //        [hashTable putData:@"5" value:@"原文地址:http://www.cnblogs.com/xiaofeixiang"];
        //        [hashTable putData:@"2" value:@"博客园"];
        //        [hashTable putData:@"1" value:@"技术交流:228407086"];
        //        [hashTable putData:@"7" value:@"keso"];
        //        [hashTable putData:@"8" value:@"上海"];
        //        [hashTable putData:@"9" value:@"北京"];
        //        [hashTable putData:@"10" value:@"深圳"];
        //        NSString  *temp=[hashTable getValue:@"5"];
        //        NSLog(@"keso:%@",temp);
        
        
        //
        //        LinearHashTable  *hashTable=[[LinearHashTable alloc]initWithData:12];
        //        [hashTable putData:@"2" value:@"FlyElephant"];
        //        [hashTable putData:@"3" value:@"原文地址:http://www.cnblogs.com/xiaofeixiang"];
        //        [hashTable putData:@"15" value:@"博客园"];
        //        [hashTable putData:@"6" value:@"技术交流:228407086"];
        //        [hashTable putData:@"9" value:@"keso"];
        //        [hashTable putData:@"12" value:@"FlyElephant"];
        //        [hashTable putData:@"13" value:@"北京"];
        //        NSString  *temp=[hashTable getValue:@"12"];
        //        NSLog(@"博客园:%@",temp);
        //        无向图
        //        Graph  *graph=[[Graph alloc]initWithVertex:13];
        //        [graph addEdges:0 endVertex:1];
        //        [graph addEdges:0 endVertex:2];
        //        [graph addEdges:0 endVertex:5];
        //        [graph addEdges:0 endVertex:6];
        //        [graph addEdges:3 endVertex:4];
        //        [graph addEdges:3 endVertex:5];
        //        [graph addEdges:4 endVertex:5];
        //        [graph addEdges:4 endVertex:6];
        //        [graph addEdges:7 endVertex:8];
        //        [graph addEdges:9 endVertex:10];
        //        [graph addEdges:9 endVertex:11];
        //        [graph addEdges:9 endVertex:12];
        //        [graph addEdges:11 endVertex:12];
        //        for (NSInteger i=0; i<[graph.adjDataSource count]; i++) {
        //            NSLog(@"节点%ld:相邻的节点:%@",i,[graph.adjDataSource[i] componentsJoinedByString:@"--"]);
        //        }
        //        DepthFirstSearch  *search=[[DepthFirstSearch alloc]initWithGraphAndVertex:graph vertex:0];
        //        for (NSInteger i=0; i<graph.vertexs; i++) {
        //            NSLog(@"节点%ld--值为:%@",i,search.marked[i]);
        //        }
        //        NSLog(@"技术交流群:%@",@"228407086");
        //        NSLog(@"原文地址:http://www.cnblogs.com/xiaofeixiang");
        //无向图的顶点的连通性
        //        Graph  *graph=[[Graph alloc]initWithVertex:6];
        //        [graph addEdges:0 endVertex:5];
        //        [graph addEdges:2 endVertex:4];
        //        [graph addEdges:2 endVertex:3];
        //        [graph addEdges:1 endVertex:2];
        //        [graph addEdges:0 endVertex:1];
        //        [graph addEdges:3 endVertex:4];
        //        [graph addEdges:5 endVertex:3];
        //        [graph addEdges:0 endVertex:2];
        //        DepthFirstSearch  *search=[[DepthFirstSearch alloc]initWithGraphAndVertex:graph vertex:0];
        //        for (NSInteger i=0; i<graph.vertexs; i++) {
        //            NSLog(@"节点%ld--值为:%@",i,search.marked[i]);
        //        }
        
        
        //        NSInteger  beginVertex=0;
        //        DepthFirstPath *path=[[DepthFirstPath alloc]initWithGraphAndVertex:graph vertex:beginVertex];
        //        for (NSInteger i=0; i<[path.edgeTo count]; i++) {
        //            NSLog(@"节点%ld--值为:%@",i,path.edgeTo[i]);
        //        }
        //        for (NSInteger i=0; i<graph.vertexs;i++) {
        //            NSMutableArray *data=[path pathTo:i];
        //             NSLog(@"%ld到%ld路径为:%@",beginVertex,i,[data componentsJoinedByString:@"--"]);
        //        }
        //        NSLog(@"技术交流群:%@",@"228407086");
        //        NSLog(@"原文地址:http://www.cnblogs.com/xiaofeixiang");
        
        //        NSInteger  beginVertex=0;
        //        BreadthFirstPath  *breadthPath=[[BreadthFirstPath alloc]initWithGraphAndVertex:graph vertex:beginVertex];
        //
        //        for (NSInteger i=0; i<[breadthPath.edgeTo count]; i++) {
        //            NSLog(@"节点%ld--值为:%@",i,breadthPath.edgeTo[i]);
        //        }
        //        for (NSInteger i=0; i<graph.vertexs;i++) {
        //            NSMutableArray *data=[breadthPath pathTo:i];
        //            NSLog(@"%ld到%ld路径为:%@",beginVertex,i,[data componentsJoinedByString:@"--"]);
        //        }
        //        NSLog(@"技术交流群:%@",@"228407086");
        //        NSLog(@"原文地址:http://www.cnblogs.com/xiaofeixiang");
        
        
        //        Graph  *graph=[[Graph alloc]initWithVertex:13];
        //        [graph addEdges:0 endVertex:1];
        //        [graph addEdges:0 endVertex:2];
        //        [graph addEdges:0 endVertex:5];
        //        [graph addEdges:0 endVertex:6];
        //        [graph addEdges:3 endVertex:4];
        //        [graph addEdges:3 endVertex:5];
        //        [graph addEdges:4 endVertex:5];
        //        [graph addEdges:4 endVertex:6];
        //        [graph addEdges:7 endVertex:8];
        //        [graph addEdges:9 endVertex:10];
        //        [graph addEdges:9 endVertex:11];
        //        [graph addEdges:9 endVertex:12];
        //        [graph addEdges:11 endVertex:12];
        //        GraphCC  *graphCC=[[GraphCC alloc]initWithGraph:graph];
        //        for (NSInteger i=0; i<graphCC.count; i++) {
        //            NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithCapacity:1];
        //            for (NSInteger j=0; j<graph.vertexs; j++) {
        //                if ([graphCC.ids[j] integerValue]==i) {
        //                    [dataSource addObject:[NSNumber numberWithInteger:j]];
        //                }
        //            }
        //            NSLog(@"分量%ld:%@",i,[dataSource componentsJoinedByString:@"--"]);
        //        }
        //        Graph  *graph=[[Graph alloc]initWithVertex:6];
        //        [graph addEdges:0 endVertex:5];
        //        [graph addEdges:2 endVertex:4];
        //        [graph addEdges:2 endVertex:3];
        //        [graph addEdges:1 endVertex:2];
        //        [graph addEdges:0 endVertex:1];
        //        [graph addEdges:3 endVertex:4];
        //        [graph addEdges:5 endVertex:3];
        //        [graph addEdges:0 endVertex:2];
        //        for (NSInteger i=0; i<[graph.adjDataSource count]; i++) {
        //            NSLog(@"节点%ld:相邻的节点:%@",i,[graph.adjDataSource[i] componentsJoinedByString:@"--"]);
        //        }
        //        GraphCycle *cycle=[[GraphCycle alloc]initWithGraph:graph];
        //        if ([cycle hasCycle]) {
        //            NSLog(@"图中含有环");
        //        }else{
        //            NSLog(@"图中不含有环");
        //        }
        
        //                Graph  *graph=[[Graph alloc]initWithVertex:4];
        //                [graph addEdges:0 endVertex:1];
        //                [graph addEdges:0 endVertex:2];
        //                [graph addEdges:1 endVertex:3];
        //                [graph addEdges:2 endVertex:3];
        
        //        Graph  *graph=[[Graph alloc]initWithVertex:6];
        //        [graph addEdges:0 endVertex:5];
        //        [graph addEdges:2 endVertex:4];
        //        [graph addEdges:2 endVertex:3];
        //        [graph addEdges:1 endVertex:2];
        //        [graph addEdges:0 endVertex:1];
        //        [graph addEdges:3 endVertex:4];
        //        [graph addEdges:5 endVertex:3];
        //        [graph addEdges:0 endVertex:2];
        //        GraphTwoColor  *graphColor=[[GraphTwoColor alloc]initWithGraph:graph];
        //        if ([graphColor isTwoColorable]) {
        //            NSLog(@"图是一个二分图");
        //        }else{
        //            NSLog(@"图不是一个二分图");
        //        }
        //        NSLog(@"技术交流群:%@",@"228407086");
        //        NSLog(@"原文地址:http://www.cnblogs.com/xiaofeixiang");
        
        
        
        //        Digraph  *graph=[[Digraph alloc]initWithVertex:13];
        //        [graph addEdges:4 endVertex:2];
        //        [graph addEdges:2 endVertex:3];
        //        [graph addEdges:3 endVertex:2];
        //        [graph addEdges:6 endVertex:0];
        //        [graph addEdges:0 endVertex:1];
        //        [graph addEdges:2 endVertex:0];
        //        [graph addEdges:11 endVertex:12];
        //        [graph addEdges:12 endVertex:9];
        //        [graph addEdges:9 endVertex:10];
        //        [graph addEdges:9 endVertex:11];
        //        [graph addEdges:8 endVertex:9];
        //        [graph addEdges:10 endVertex:12];
        //        [graph addEdges:11 endVertex:4];
        //        [graph addEdges:4 endVertex:3];
        //        [graph addEdges:3 endVertex:5];
        //        [graph addEdges:7 endVertex:8];
        //        [graph addEdges:8 endVertex:7];
        //        [graph addEdges:5 endVertex:4];
        //        [graph addEdges:0 endVertex:5];
        //        [graph addEdges:6 endVertex:4];
        //        [graph addEdges:6 endVertex:9];
        //        [graph addEdges:7 endVertex:6];
        //        for (NSInteger i=0; i<[graph.adjDataSource count]; i++) {
        //            NSLog(@"节点%ld指出→的节点:%@",i,[graph.adjDataSource[i] componentsJoinedByString:@"--"]);
        //        }
        
        
        //        Digraph  *digraph=[graph reverse];
        //        for (NSInteger i=0; i<[digraph.adjDataSource count]; i++) {
        //            NSLog(@"指入%ld⬅️的节点:%@",i,[digraph.adjDataSource[i] componentsJoinedByString:@"--"]);
        //        }
        
        //        NSArray  *sources=[NSArray arrayWithObjects:@"2", nil];
        //        DirectedDFS  *directedDFS=[[DirectedDFS alloc]initDirectedDFSWithVertex:graph vertexArr:sources];
        //        NSMutableArray  *reachableArr=[[NSMutableArray alloc]initWithCapacity:1];
        //        for (NSInteger i=0; i<graph.vertexs; i++) {
        //
        //            if (directedDFS.marked[i]&&directedDFS.marked[i]!=[NSNull null]) {
        //                [reachableArr addObject:[NSNumber numberWithInteger:i]];
        //            }
        //        }
        //        NSLog(@"可达的节点:%@",[reachableArr componentsJoinedByString:@"--"]);
        
        
        
        //        Digraph  *graph=[[Digraph alloc]initWithVertex:13];
        //        [graph addEdges:4 endVertex:2];
        //        [graph addEdges:2 endVertex:3];
        //        [graph addEdges:3 endVertex:2];
        //        [graph addEdges:6 endVertex:0];
        //        [graph addEdges:0 endVertex:1];
        //        [graph addEdges:2 endVertex:0];
        //        [graph addEdges:11 endVertex:12];
        //        [graph addEdges:12 endVertex:9];
        //        [graph addEdges:9 endVertex:10];
        //        [graph addEdges:9 endVertex:11];
        //        [graph addEdges:8 endVertex:9];
        //        [graph addEdges:10 endVertex:12];
        //        [graph addEdges:11 endVertex:4];
        //        [graph addEdges:4 endVertex:3];
        //        [graph addEdges:3 endVertex:5];
        //        [graph addEdges:7 endVertex:8];
        //        [graph addEdges:8 endVertex:7];
        //        [graph addEdges:5 endVertex:4];
        //        [graph addEdges:0 endVertex:5];
        //        [graph addEdges:6 endVertex:4];
        //        [graph addEdges:6 endVertex:9];
        //        [graph addEdges:7 endVertex:6];
        //        DirectedCycle  *directedCycle=[[DirectedCycle alloc]initWithGraph:graph];
        //        if ([directedCycle.cycle count]) {
        //            NSLog(@"形成有向环的节点为:%@",[directedCycle.cycle componentsJoinedByString:@"--"]);
        //        }
        //        NSLog(@"技术交流群:%@",@"228407086");
        //        NSLog(@"博客园-FlyElephant:http://www.cnblogs.com/xiaofeixiang");
        
        //        Digraph  *digraph=[[Digraph alloc]initWithVertex:13];
        //        [digraph addEdges:0 endVertex:6];
        //        [digraph addEdges:0 endVertex:1];
        //        [digraph addEdges:0 endVertex:5];
        //        [digraph addEdges:2 endVertex:0];
        //        [digraph addEdges:2 endVertex:3];
        //        [digraph addEdges:3 endVertex:5];
        //        [digraph addEdges:5 endVertex:4];
        //        [digraph addEdges:6 endVertex:4];
        //        [digraph addEdges:6 endVertex:9];
        //        [digraph addEdges:7 endVertex:6];
        //        [digraph addEdges:8 endVertex:7];
        //        [digraph addEdges:9 endVertex:10];
        //        [digraph addEdges:9 endVertex:12];
        //        [digraph addEdges:9 endVertex:11];
        //        [digraph addEdges:11 endVertex:12];
        //        TopologicalSort  *logicSort=[[TopologicalSort alloc]initWithDigraph:digraph];
        //        NSLog(@"拓扑排序逆后序的结果:%@",[logicSort.order componentsJoinedByString:@"--"]);
        //        Digraph  *graph=[[Digraph alloc]initWithVertex:13];
        //        [graph addEdges:4 endVertex:2];
        //        [graph addEdges:2 endVertex:3];
        //        [graph addEdges:3 endVertex:2];
        //        [graph addEdges:6 endVertex:0];
        //        [graph addEdges:0 endVertex:1];
        //        [graph addEdges:2 endVertex:0];
        //        [graph addEdges:11 endVertex:12];
        //        [graph addEdges:12 endVertex:9];
        //        [graph addEdges:9 endVertex:10];
        //        [graph addEdges:9 endVertex:11];
        //        [graph addEdges:8 endVertex:9];
        //        [graph addEdges:10 endVertex:12];
        //        [graph addEdges:11 endVertex:4];
        //        [graph addEdges:4 endVertex:3];
        //        [graph addEdges:3 endVertex:5];
        //        [graph addEdges:7 endVertex:8];
        //        [graph addEdges:8 endVertex:7];
        //        [graph addEdges:5 endVertex:4];
        //        [graph addEdges:0 endVertex:5];
        //        [graph addEdges:6 endVertex:4];
        //        [graph addEdges:6 endVertex:9];
        //        [graph addEdges:7 endVertex:6];
        //        KosarajuCC  *graphCC=[[KosarajuCC alloc]initWithGraph:graph];
        //        for (NSInteger i=0; i<graphCC.count; i++) {
        //            NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithCapacity:1];
        //            for (NSInteger j=0; j<graph.vertexs; j++) {
        //                if ([graphCC.ids[j] integerValue]==i) {
        //                    [dataSource addObject:[NSNumber numberWithInteger:j]];
        //                }
        //            }
        //            NSLog(@"分量%ld:%@",i,[dataSource componentsJoinedByString:@"--"]);
        //        }
        //        NSInteger  vertex=0,otherVertex=1;
        //        Boolean  cc=[graphCC stronglyConnected:vertex otherVertex:otherVertex];
        //        NSLog(@"节点%ld和节点%ld %@强连通的",vertex,otherVertex,cc==true?@"是":@"不是");
        //        NSLog(@"技术交流群:%@",@"228407086");
        //        NSLog(@"博客园-FlyElephant:http://www.cnblogs.com/xiaofeixiang");
        
        //        NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithCapacity:1];
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:0 value:@"FlyElephant"]];
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:1 value:@"keso"]];
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:2 value:@"中山郎"]];
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:3 value:@"http://www.cnblogs.com/xiaofeixiang/"]];
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:3 value:@"iOS技术交流:228407086"]];
        //
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:2 value:@"北京"]];
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:1 value:@"上海"]];
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:3 value:@"深圳"]];
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:2 value:@"广州"]];
        //        [dataSource addObject: [[keyIndexModel alloc]initWithKeyValue:0 value:@"河南"]];
        //
        //        KeyIndexSort  *indexSort=[[KeyIndexSort alloc]init];
        //        [indexSort sort:dataSource categoryNumber:5];
        //         [dataSource enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //             keyIndexModel  *model=obj;
        //             NSLog(@"%ld--%@",idx,model.value);
        //         }];
        //        NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithObjects:@"4PGC938",@"2IYE230",@"3CI0720",@"1ICK750",@"10HV845",@"4JZY524",@"1ICK750",@"3CI0720",@"10HV845",@"10HV845",@"2RLA629",@"2RLA629",@"3ATW723",nil];
        //        LSD  *lsd=[[LSD alloc]init];
        //        NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithObjects:@"12345",@"23456",@"78901",@"89764",@"12345",@"45678",@"89794",@"89754",@"64532",@"69784",nil];
        //        [lsd lowSort:dataSource singleLength:5];
        //        [dataSource enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //            NSLog(@"%@",obj);
        //        }];
        //        NSLog(@"技术交流群:%@",@"228407086");
        //        NSLog(@"博客园-FlyElephant:http://www.cnblogs.com/xiaofeixiang");
        //        NSString  *str=@"abc";
        //        NSLog(@"%d",[str characterAtIndex:2]-97);
//        MSD *msd=[[MSD alloc]init];
//        NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithObjects:@"she",@"girl",@"he",@"by",@"keso",@"fly",@"elephant",@"the",@"shells",@"she",@"sells",@"are",@"boy",@"seachells",nil];
//        [msd setupData:dataSource];
//        [dataSource enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            NSLog(@"%@",obj);
//        }];
        
//        Quick3String  *quick=[[Quick3String alloc]init];
//        NSMutableArray  *dataSource=[[NSMutableArray alloc]initWithObjects:@"xiang",@"girl",@"he",@"fei",@"keso",@"fly",@"elephant",@"de",@"",@"she",@"elephant",nil];
//          [quick sort:dataSource];
//        [dataSource enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            NSLog(@"%@",obj);
//        }];
//        NSLog(@"技术交流群:%@",@"228407086");
//        NSLog(@"博客园-FlyElephant:http://www.cnblogs.com/xiaofeixiang");
        
//        Reverse  *reverse=[[Reverse alloc]init];
////        [reverse reverse];
//        NSLog(@"最终输出的结果为:%@",[reverse reverse1:@"http://www.cnblogs.com/xiaofeixiang"]);
        NSString *result=@"s博客园";
        NSString *reverse=[result reverse];
//        NSLog(@"%@",[result substringWithRange:NSMakeRange(0,1)]);
//        NSLog(@"%@--%lu",result,(unsigned long)result.length);
//        NSLog(@"%@",reverse);
                NSLog(@"%@",[reverse stringByReversed]);
        
//        NSLog(@"%@",[NSString stringWithFormat:@"中国人"]);
        NSLog(@"YES:%ld",sizeof(YES));
        NSLog(@"true:%ld",sizeof(true));
        
    }
    return 0;
}
