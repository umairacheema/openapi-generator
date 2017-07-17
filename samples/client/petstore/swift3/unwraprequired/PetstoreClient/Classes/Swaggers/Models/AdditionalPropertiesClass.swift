//
// AdditionalPropertiesClass.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class AdditionalPropertiesClass: JSONEncodable {

    public var mapProperty: [String:String]?
    public var mapOfMapProperty: [String:[String:String]]?


    public init(mapProperty: [String:String]?=nil, mapOfMapProperty: [String:[String:String]]?=nil) {
        self.mapProperty = mapProperty
        self.mapOfMapProperty = mapOfMapProperty
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["map_property"] = self.mapProperty?.encodeToJSON()
        nillableDictionary["map_of_map_property"] = self.mapOfMapProperty?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}