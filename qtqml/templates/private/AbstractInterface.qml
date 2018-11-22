{% include 'copyright.h' %}


/*
 * This is an auto-generated file.
 * Do not edit! All changes made to it will be lost.
 */

import QtQml 2.2
import QtQml.Models 2.2

import "."

{{interface.comment}}
QtObject {
    id: root

{% for property in interface.properties %}
{% if property.readonly %}
{% if property.comment %}
    {{ property.comment }}
{% endif %}
    readonly property {{property|qml.propertyType}} {{property}} : _{{property}}
    property {{property|qml.propertyType}} _{{property}} : {{property|qml.defaultValue}}
{% else %}
{% if property.comment %}
    {{ property.comment }}
{% endif %}
    property {{property|qml.propertyType}} {{property}} : {{property|qml.defaultValue }}
{% endif %}
{% endfor %}

{% for operation in interface.operations %}
{% if operation.comment %}
    {{ operation.comment }}
{% endif %}
    property var {{operation}} : function({{operation.parameters|join(', ')}}) {}
{% endfor %}

{% for signal in interface.signals %}
    signal {{signal}}(
        {%- for parameter in signal.parameters %}
            {{- parameter.type|qml.propertyType }} {{ parameter.name -}}
            {% if not loop.last %}, {% endif %}
        {% endfor -%}
    )
{% endfor %}
}

