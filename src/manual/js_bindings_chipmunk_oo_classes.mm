///*
// * Chipmunk Object Oritned API
// * Manually generated
// */
//
//#include "js_bindings_config.h"
//#ifdef JSB_INCLUDE_CHIPMUNK
//
//#include "jsfriendapi.h"
//#include "js_bindings_config.h"
//#include "js_bindings_core.h"
//#include "js_bindings_basic_conversions.h"
//
//#include "js_bindings_chipmunk_manual.h"
//
///*
// * cpSpace
// */
//#pragma mark - cpSpace
//
//JSClass* JSB_cpSpace_class = NULL;
//JSObject* JSB_cpSpace_object = NULL;
//// Constructor
//JSBool JSB_cpSpace_constructor(JSContext *cx, uint32_t argc, jsval *vp)
//{
//	JSObject *jsobj = JS_NewObject(cx, JSB_cpSpace_class, JSB_cpSpace_object, NULL);
//	cpSpace *handle = cpSpaceNew();
//	JS_SetPrivate(jsobj, handle);
//
//	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));
//	return JS_TRUE;
//}
//
//// Destructor
//void JSB_cpSpace_finalize(JSFreeOp *fop, JSObject *obj)
//{
//	CCLOGINFO(@"jsbindings: finalizing JS object %p (cpSpace)", obj);
//	void *handle = JS_GetPrivate(obj);
//	NSCAssert( handle, @"Invalid handle for cpSapce");
//
//	cpSpaceFree( (cpSpace*)handle);
//}
//
//void JSB_cpSpace_createClass(JSContext *cx, JSObject* globalObj, const char* name )
//{
//	JSB_cpSpace_class = (JSClass *)calloc(1, sizeof(JSClass));
//	JSB_cpSpace_class->name = name;
//	JSB_cpSpace_class->addProperty = JS_PropertyStub;
//	JSB_cpSpace_class->delProperty = JS_PropertyStub;
//	JSB_cpSpace_class->getProperty = JS_PropertyStub;
//	JSB_cpSpace_class->setProperty = JS_StrictPropertyStub;
//	JSB_cpSpace_class->enumerate = JS_EnumerateStub;
//	JSB_cpSpace_class->resolve = JS_ResolveStub;
//	JSB_cpSpace_class->convert = JS_ConvertStub;
//	JSB_cpSpace_class->finalize = JSB_cpSpace_finalize;
//	JSB_cpSpace_class->flags = JSCLASS_HAS_PRIVATE;
//
//	static JSPropertySpec properties[] = {
//		{0, 0, 0, 0, 0}
//	};
//
//	static JSFunctionSpec funcs[] = {
//		JS_FS_END
//	};
//
//	static JSFunctionSpec st_funcs[] = {
//		JS_FS_END
//	};
//
//	JSB_cpSpace_object = JS_InitClass(cx, globalObj, JSB_cpBase_object, JSB_cpSpace_class, JSB_cpSpace_constructor,0,properties,funcs,NULL,st_funcs);
//}
//
///*
// * cpBody
// */
//#pragma mark - cpBody
//
//JSClass* JSB_cpBody_class = NULL;
//JSObject* JSB_cpBody_object = NULL;
//
//// Constructor
//JSBool JSB_cpBody_constructor(JSContext *cx, uint32_t argc, jsval *vp)
//{
//	JSB_PRECONDITION( argc==2, "Invalid arguments. Expecting 2");
//	
//	JSObject *jsobj = JS_NewObject(cx, JSB_cpBody_class, JSB_cpBody_object, NULL);
//	
//	jsval *argvp = JS_ARGV(cx,vp);
//	JSBool ok = JS_TRUE;
//	
//	double m, i;
//	
//	ok = JS_ValueToNumber(cx, *argvp++, &m );
//	ok = JS_ValueToNumber(cx, *argvp++, &i );
//	
//	JSB_PRECONDITION(ok, "Error converting arguments for JSB_cpBody_constructor");
//	
//	cpBody *handle = cpBodyNew(m, i);
//	JS_SetPrivate(jsobj, handle);
//	
//	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));
//	return JS_TRUE;
//}
//
//// Destructor
//void JSB_cpBody_finalize(JSFreeOp *fop, JSObject *obj)
//{
//	CCLOGINFO(@"jsbindings: finalizing JS object %p (cpBody)", obj);
//	void *handle = JS_GetPrivate(obj);
//	NSCAssert( handle, @"Invalid handle for cpBody");
//	
//	cpShapeFree((cpShape*)handle);
//}
//
//void JSB_cpBody_createClass(JSContext *cx, JSObject* globalObj, const char* name )
//{
//	JSB_cpBody_class = (JSClass *)calloc(1, sizeof(JSClass));
//	JSB_cpBody_class->name = name;
//	JSB_cpBody_class->addProperty = JS_PropertyStub;
//	JSB_cpBody_class->delProperty = JS_PropertyStub;
//	JSB_cpBody_class->getProperty = JS_PropertyStub;
//	JSB_cpBody_class->setProperty = JS_StrictPropertyStub;
//	JSB_cpBody_class->enumerate = JS_EnumerateStub;
//	JSB_cpBody_class->resolve = JS_ResolveStub;
//	JSB_cpBody_class->convert = JS_ConvertStub;
//	JSB_cpBody_class->finalize = JSB_cpBody_finalize;
//	JSB_cpBody_class->flags = JSCLASS_HAS_PRIVATE;
//	
//	static JSPropertySpec properties[] = {
//		{0, 0, 0, 0, 0}
//	};
//	static JSFunctionSpec funcs[] = {
//		JS_FS_END
//	};
//	static JSFunctionSpec st_funcs[] = {
//		JS_FS_END
//	};
//	
//	JSB_cpBody_object = JS_InitClass(cx, globalObj, JSB_cpBase_object, JSB_cpBody_class, JSB_cpBody_constructor,0,properties,funcs,NULL,st_funcs);
//}
//
///*
// * cpSegmentShape
// */
//#pragma mark - cpSegmentShape
//
//JSClass* JSB_cpSegmentShape_class = NULL;
//JSObject* JSB_cpSegmentShape_object = NULL;
//// Constructor
//JSBool JSB_cpSegmentShape_constructor(JSContext *cx, uint32_t argc, jsval *vp)
//{
//	JSB_PRECONDITION( argc==4, "Invalid arguments. Expecting 4");
//
//	JSObject *jsobj = JS_NewObject(cx, JSB_cpSegmentShape_class, JSB_cpSegmentShape_object, NULL);
//	
//	jsval *argvp = JS_ARGV(cx,vp);
//	JSBool ok = JS_TRUE;
//
//	cpBody *body = NULL;
//	cpVect a, b;
//	double radius;
//	
//	ok = jsval_to_opaque(cx, *argvp++, (void**)&body);
//	ok = jsval_to_CGPoint(cx, *argvp++, (CGPoint*)&a);
//	ok = jsval_to_CGPoint(cx, *argvp++, (CGPoint*)&b);
//	ok = JS_ValueToNumber(cx, *argvp++, &radius);
//	
//	JSB_PRECONDITION(ok, "Error converting arguments for JSB_cpSegmentShape_constructor");
//	
//	cpShape *handle = cpSegmentShapeNew(body, a, b, radius);
//	JS_SetPrivate(jsobj, handle);
//	
//	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));
//	return JS_TRUE;
//}
//
//// Destructor
//void JSB_cpSegmentShape_finalize(JSFreeOp *fop, JSObject *obj)
//{
//	CCLOGINFO(@"jsbindings: finalizing JS object %p (cpSegmentShape)", obj);
//	void *handle = JS_GetPrivate(obj);
//	NSCAssert( handle, @"Invalid handle for cpSegmentShape");
//	
//	cpShapeFree((cpShape*)handle);
//}
//
//void JSB_cpSegmentShape_createClass(JSContext *cx, JSObject* globalObj, const char* name )
//{
//	JSB_cpSegmentShape_class = (JSClass *)calloc(1, sizeof(JSClass));
//	JSB_cpSegmentShape_class->name = name;
//	JSB_cpSegmentShape_class->addProperty = JS_PropertyStub;
//	JSB_cpSegmentShape_class->delProperty = JS_PropertyStub;
//	JSB_cpSegmentShape_class->getProperty = JS_PropertyStub;
//	JSB_cpSegmentShape_class->setProperty = JS_StrictPropertyStub;
//	JSB_cpSegmentShape_class->enumerate = JS_EnumerateStub;
//	JSB_cpSegmentShape_class->resolve = JS_ResolveStub;
//	JSB_cpSegmentShape_class->convert = JS_ConvertStub;
//	JSB_cpSegmentShape_class->finalize = JSB_cpSegmentShape_finalize;
//	JSB_cpSegmentShape_class->flags = JSCLASS_HAS_PRIVATE;
//	
//	static JSPropertySpec properties[] = {
//		{0, 0, 0, 0, 0}
//	};
//
//	static JSFunctionSpec funcs[] = {
//		JS_FS_END
//	};
//
//	static JSFunctionSpec st_funcs[] = {
//		JS_FS_END
//	};
//	
//	JSB_cpSegmentShape_object = JS_InitClass(cx, globalObj, JSB_cpBase_object, JSB_cpSegmentShape_class, JSB_cpSegmentShape_constructor,0,properties,funcs,NULL,st_funcs);
//}
//
///*
// * cpBoxShape
// */
//#pragma mark - cpBoxShape
//
//JSClass* JSB_cpBoxShape_class = NULL;
//JSObject* JSB_cpBoxShape_object = NULL;
//
//// Constructor
//JSBool JSB_cpBoxShape_constructor(JSContext *cx, uint32_t argc, jsval *vp)
//{
//	JSB_PRECONDITION( argc==3, "Invalid arguments. Expecting 3");
//	
//	JSObject *jsobj = JS_NewObject(cx, JSB_cpBoxShape_class, JSB_cpBoxShape_object, NULL);
//	
//	jsval *argvp = JS_ARGV(cx,vp);
//	JSBool ok = JS_TRUE;
//	
//	cpBody *body = NULL;
//	double w, h;
//	
//	ok = jsval_to_opaque(cx, *argvp++, (void**)&body);
//	ok = JS_ValueToNumber(cx, *argvp++, &w );
//	ok = JS_ValueToNumber(cx, *argvp++, &h );
//
//	JSB_PRECONDITION(ok, "Error converting arguments for JSB_cpBoxShape_constructor");
//	
//	cpShape *handle = cpBoxShapeNew(body, w, h);
//	JS_SetPrivate(jsobj, handle);
//	
//	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));
//	return JS_TRUE;
//}
//
//// Destructor
//void JSB_cpBoxShape_finalize(JSFreeOp *fop, JSObject *obj)
//{
//	CCLOGINFO(@"jsbindings: finalizing JS object %p (cpBoxShape)", obj);
//	void *handle = JS_GetPrivate(obj);
//	NSCAssert( handle, @"Invalid handle for cpBoxShape");
//	
//	cpShapeFree((cpShape*)handle);
//}
//
//void JSB_cpBoxShape_createClass(JSContext *cx, JSObject* globalObj, const char* name )
//{
//	JSB_cpBoxShape_class = (JSClass *)calloc(1, sizeof(JSClass));
//	JSB_cpBoxShape_class->name = name;
//	JSB_cpBoxShape_class->addProperty = JS_PropertyStub;
//	JSB_cpBoxShape_class->delProperty = JS_PropertyStub;
//	JSB_cpBoxShape_class->getProperty = JS_PropertyStub;
//	JSB_cpBoxShape_class->setProperty = JS_StrictPropertyStub;
//	JSB_cpBoxShape_class->enumerate = JS_EnumerateStub;
//	JSB_cpBoxShape_class->resolve = JS_ResolveStub;
//	JSB_cpBoxShape_class->convert = JS_ConvertStub;
//	JSB_cpBoxShape_class->finalize = JSB_cpBoxShape_finalize;
//	JSB_cpBoxShape_class->flags = JSCLASS_HAS_PRIVATE;
//	
//	static JSPropertySpec properties[] = {
//		{0, 0, 0, 0, 0}
//	};
//	static JSFunctionSpec funcs[] = {
//		JS_FS_END
//	};
//	static JSFunctionSpec st_funcs[] = {
//		JS_FS_END
//	};
//	
//	JSB_cpBoxShape_object = JS_InitClass(cx, globalObj, JSB_cpBase_object, JSB_cpBoxShape_class, JSB_cpBoxShape_constructor,0,properties,funcs,NULL,st_funcs);
//}
//
//#endif // JSB_INCLUDE_CHIPMUNK
