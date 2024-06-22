.. image:: ../images/otobo-logo.png
   :align: center
|

.. toctree::
    :maxdepth: 2
    :caption: Contents

Sacrifice to Sphinx
===================

Description
===========
The OTOBO::ITSM Change Management package.

System requirements
===================

Framework
---------
OTOBO 11.0.x

Packages
--------
ITSMCore 11.0.1

Third-party software
--------------------
\-

Usage
=====

Setup
-----

Configuration Reference
-----------------------

Core::Cache
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::CacheTTL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Cache time in minutes for the change management. Default: 5 days (7200 minutes).

ITSMChange::ToolBar::CacheTTL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Cache time in minutes for the change management toolbars. Default: 3 hours (180 minutes).

Core::DB::Mirror
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::ChangeSearch::MirrorDB
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the change search and the workorder search functions could use the mirror DB.

Core::DynamicFields::ObjectTypeRegistration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

DynamicFields::ObjectType###ITSMChange
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
DynamicField object registration.

DynamicFields::ObjectType###ITSMWorkOrder
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
DynamicField object registration.

Core::Event::DynamicField
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

DynamicField::EventModulePost###100-UpdateITSMChangeConditions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
DynamicField event module to handle the update of conditions if dynamic fields are added, updated or deleted.

Core::Event::ITSMChange
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::EventModule###01-HistoryAdd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that updates the history of changes.

ITSMChange::EventModule###02-Notification
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that sends notifications.

ITSMChange::EventModule###03-Condition
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that matches conditions and executes actions.

ITSMChange::EventModule###80-ToolBarChangeManagerCacheDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that deletes the cache for a toolbar.

ITSMChange::EventModule###81-ToolBarMyChangesCacheDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that deletes the cache for a toolbar.

ITSMChange::EventModule###82-ToolBarMyCABCacheDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that deletes the cache for a toolbar.

ITSMChange::EventModule###90-ConditionDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that cleans up conditions.

ITSMChange::EventModule###91-HistoryDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that deletes the history of changes.

ITSMChangeManagementNotification::EventModule###01-HistoryAdd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that updates the history of changes.

ITSMChange::EventModule###1000-GenericInterface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Performs the configured action for each event (as an Invoker) for each configured Webservice.

Core::Event::ITSMChangeCronjob
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChangeCronjob::EventModule###01-HistoryAdd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that updates the history of changes.

ITSMChangeCronjob::EventModule###02-Notification
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that sends notifications.

ITSMChangeCronjob::EventModule###03-Condition
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that matches conditions and executes actions.

Core::Event::ITSMCondition
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMCondition::EventModule###01-HistoryAdd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that updates the history of conditions.

ITSMCondition::EventModule###02-Notification
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that sends notifications.

Core::Event::ITSMWorkOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::EventModule###01-WorkOrderNumberCalc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module to recalculate the workorder numbers.

ITSMWorkOrder::EventModule###02-WorkOrderActualTimesSet
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module to set the actual start and end times of workorders.

ITSMWorkOrder::EventModule###03-HistoryAdd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that updates the history of workorders.

ITSMWorkOrder::EventModule###04-Notification
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that sends notifications.

ITSMWorkOrder::EventModule###05-Condition
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that matches conditions and executes actions.

ITSMWorkOrder::EventModule###80-ToolBarMyWorkOrdersCacheDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ITSM event module that deletes the cache for a toolbar.

ITSMWorkOrder::EventModule###1000-GenericInterface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Performs the configured action for each event (as an Invoker) for each configured Webservice.

Core::ITSMChange
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::AddChangeLinkTicketTypes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Types of tickets, where in the ticket zoom view a link to add a change will be displayed.

ITSMChange::RestrictTicketTypes::Groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Only users of these groups have the permission to use the ticket types as defined in "ITSMChange::AddChangeLinkTicketTypes" if the feature "Ticket::Acl::Module###200-Ticket::Acl::Module" is enabled.

ITSMChange::Hook
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
The identifier for a change, e.g. Change#, MyChange#. The default is Change#.

ITSMChange::StateLock::AllowEndStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if reachable (as defined by the state machine) change end states should be allowed if a change is in a locked state.

ITSMChange::State::Signal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the signals for each ITSM change state.

ITSMChange::Category::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default value for the category of a change.

ITSMChange::Impact::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default value for the impact of a change.

ITSMChange::Permission###06-AddWorkOrderCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check if WorkOrderAdd or WorkOrderAddFromTemplate should be permitted.

ITSMChange::Permission###10-ChangeManagerCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check the change manager.

ITSMChange::Permission###20-ChangeBuilderCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check the change builder.

ITSMChange::Permission###30-ChangeAgentCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check the agent.

ITSMChange::Permission###40-CABCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check the CAB members.

ITSMChange::NumberGenerator
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Selects the change number generator module. "AutoIncrement" increments the change number, the SystemID and the counter are used with SystemID.counter format (e.g. 100118, 100119). With "Date", the change numbers will be generated by the current date and a counter; this format looks like Year.Month.Day.counter, e.g. 2010062400001, 2010062400002. With "DateChecksum", the counter will be appended as checksum to the string of date plus the SystemID. The checksum will be rotated on a daily basis. This format looks like Year.Month.Day.SystemID.Counter.CheckSum, e.g. 2010062410000017, 2010062410000026.

ITSMChange::NumberGenerator::MinCounterSize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the minimal change counter size (if "AutoIncrement" was selected as ITSMChange::NumberGenerator). Default is 5, this means the counter starts from 10000.

ITSMChange::NumberGenerator::AutoIncrement::MinCounterSize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the minimal change counter size (if "AutoIncrement" was selected as ITSMChange::NumberGenerator). Default is 5, this means the counter starts from 10000.

ITSMChange::NumberGenerator::Date::UseFormattedCounter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Enables the minimal change counter size (if "Date" was selected as ITSMChange::NumberGenerator).

Core::ITSMCondition::Action::ITSMChange
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Mapping::Action::Object::Attribute
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the object attributes that are selectable for change objects in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###ChangeStateID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ChangeStateID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###ChangeTitle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ChangeTitle in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###CategoryID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute CategoryID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###ImpactID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ImpactID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###PriorityID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PriorityID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###ChangeManagerID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ChangeManagerID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###ChangeBuilderID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ChangeBuilderID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###RequestedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute RequestedTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###PlannedStartTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedStartTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###PlannedEndTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedEndTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###ActualStartTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ActualStartTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###ActualEndTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ActualEndTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###PlannedEffort
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedEffort in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###AccountedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute AccountedTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Action::Attribute::Operator###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute DynamicField in the change condition edit screen of the agent interface.

Core::ITSMCondition::Action::ITSMWorkOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Mapping::Action::Object::Attribute
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the object attributes that are selectable for workorder objects in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###WorkOrderNumber
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderNumber in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###WorkOrderStateID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderStateID in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###WorkOrderTypeID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderTypeID in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###WorkOrderTitle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderTitle in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###WorkOrderAgentID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderAgentID in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###PlannedStartTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedStartTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###PlannedEndTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedEndTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###ActualStartTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ActualStartTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###ActualEndTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ActualEndTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###PlannedEffort
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedEffort in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###AccountedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute AccountedTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Action::Attribute::Operator###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute DynamicField in the change condition edit screen of the agent interface.

Core::ITSMCondition::Expression::ITSMChange
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Mapping::Expression::Object::Attribute
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the object attributes that are selectable for change objects in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###ChangeStateID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ChangeStateID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###ChangeTitle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ChangeTitle in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###CategoryID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute CategoryID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###ImpactID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ImpactID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###PriorityID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PriorityID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###ChangeManagerID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ChangeManagerID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###ChangeBuilderID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ChangeBuilderID in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###RequestedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute RequestedTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###PlannedStartTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedStartTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###PlannedEndTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedEndTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###ActualStartTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ActualStartTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###ActualEndTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ActualEndTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###PlannedEffort
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedEffort in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###AccountedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute AccountedTime in the change condition edit screen of the agent interface.

ITSMChange::Mapping::Expression::Attribute::Operator###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute DynamicField in the change condition edit screen of the agent interface.

Core::ITSMCondition::Expression::ITSMWorkOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Mapping::Expression::Object::Attribute
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the object attributes that are selectable for workorder objects in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###WorkOrderNumber
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderNumber in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###WorkOrderStateID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderStateID in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###WorkOrderTypeID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderTypeID in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###WorkOrderTitle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderTitle in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###WorkOrderAgentID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute WorkOrderAgentID in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###PlannedStartTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedStartTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###PlannedEndTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedEndTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###ActualStartTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ActualStartTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###ActualEndTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute ActualEndTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###PlannedEffort
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute PlannedEffort in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###AccountedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute AccountedTime in the change condition edit screen of the agent interface.

ITSMWorkOrder::Mapping::Expression::Attribute::Operator###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the operators that are selectable for the attribute DynamicField in the change condition edit screen of the agent interface.

Core::ITSMCondition::ITSMChange
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Attribute::CompareValue::FieldType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the field type of CompareValue fields for change attributes used in the change condition edit screen of the agent interface. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.

Core::ITSMCondition::ITSMWorkOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Attribute::CompareValue::FieldType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the field type of CompareValue fields for workorder attributes used in the change condition edit screen of the agent interface. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.

Core::ITSMStateMachine
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMStateMachine::Object###Change
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets up the state machine for changes.

ITSMStateMachine::Object###WorkOrder
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets up the state machine for workorders.

Core::ITSMWorkOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Hook
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
The identifier for a workorder, e.g. Workorder#, MyWorkorder#. The default is Workorder#.

ITSMWorkOrder::StateLock::AllowEndStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if reachable (as defined by the state machine) workorder end states should be allowed if a workorder is in a locked state.

ITSMWorkOrder::State::Signal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Define the signals for each workorder state.

ITSMWorkOrder::Type::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default type for a workorder. This entry must exist in general catalog class 'ITSM::ChangeManagement::WorkOrder::Type'.

ITSMWorkOrder::ActualStartTimeSet::States
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
A list of workorder states, at which the ActualStartTime of a workorder will be set if it was empty at this point.

ITSMWorkOrder::TakePermission::List
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
A list of the agents who have permission to take workorders. Key is a login name. Content is 0 or 1.

ITSMWorkOrder::TimePeriod
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the period (in years), in which start and end times can be selected.

ITSMWorkOrder::Permission###10-ChangeManagerCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check the change manager.

ITSMWorkOrder::Permission###20-ChangeBuilderCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check the change builder.

ITSMWorkOrder::Permission###30-WorkOrderAgentCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check the workorder agent.

ITSMWorkOrder::Permission###40-CABCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check the CAB members.

ITSMWorkOrder::TakePermission###10-EmptyAgent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check whether no workorder agent is set.

ITSMWorkOrder::TakePermission###20-ListAgent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to check whether the agent is contained in the configured list.

Core::Notifications
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::SendNotifications
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines whether notifications should be sent.

ITSMChange::TimeReachedNotifications###Frequency
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Configures how often the notifications are sent when planned the start time or other time values have been reached/passed.

ITSMChange::TimeReachedNotifications###Hours
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
If frequency is 'regularly', you can configure how often the notifications are sent (every X hours).

Core::Stats
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Stats::DynamicObjectRegistration###ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Determines if the common stats module may generate stats about changes.

Stats::DynamicObjectRegistration###ITSMChangeManagementHistory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Determines if the common stats module may generate stats about changes regarding change state updates within a timeperiod.

Stats::DynamicObjectRegistration###ITSMChangeManagementChangesIncidents
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Determines if the common stats module may generate stats about changes regarding the relation between changes and incident tickets.

Stats::DynamicObjectRegistration###ITSMChangeManagementRfcRequester
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Determines if the common stats module may generate stats about the number of Rfc tickets a requester created.

Stats::DynamicObjectRegistration###ITSMChangeManagementChangesPerCIClasses
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Determines if the common stats module may generate stats about changes done for config item classes.

Core::Ticket::ACL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Acl::Module###200-Ticket::Acl::Module
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
This ACL module restricts the usuage of the ticket types that are defined in the sysconfig option 'ITSMChange::AddChangeLinkTicketTypes', to users of the groups as defined in "ITSMChange::RestrictTicketTypes::Groups". As this ACL could collide with other ACLs which are also related to the ticket type, this sysconfig option is disabled by default and should only be activated if needed.

Daemon::SchedulerCronTaskManager::Task
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Daemon::SchedulerCronTaskManager::Task###ITSMChangesCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Run task to check if specific times have been reached in changes and workorders.

Frontend::Admin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Events###ITSMChange
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
List of all change events to be displayed in the GUI.

Events###ITSMWorkOrder
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
List of all workorder events to be displayed in the GUI.

Frontend::Admin::ModuleRegistration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Module###AdminITSMChangeNotification
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AdminITSMChangeCIPAllocate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AdminITSMStateMachine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeCABTemplate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Admin::ModuleRegistration::AdminOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::NavigationModule###AdminITSMChangeCIPAllocate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Admin area navigation for the agent interface.

Frontend::NavigationModule###AdminITSMChangeNotification
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Admin area navigation for the agent interface.

Frontend::NavigationModule###AdminITSMStateMachine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Admin area navigation for the agent interface.

Frontend::Admin::ModuleRegistration::Loader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Loader::Module::AdminITSMChangeNotification###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AdminITSMChangeCIPAllocate###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Frontend::Admin::ModuleRegistration::MainMenu
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Navigation###AdminITSMChangeCIPAllocate###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AdminITSMChangeNotification###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AdminITSMStateMachine###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Admin::View::ITSMChangeNotification
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AdminITSMChangeNotification###RichText
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Uses richtext for viewing and editing ticket notification.

ITSMChange::Frontend::AdminITSMChangeNotification###RichTextWidth
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the width for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).

ITSMChange::Frontend::AdminITSMChangeNotification###RichTextHeight
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the height for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).

Frontend::Agent::ITSMChange::MenuModule
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::MenuModule###000-Back
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to go back in the change zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###010-History
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to access the history of a change in the its zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###020-Print
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to print a change in the its zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###030-Edit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to edit a change in the its zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###040-InvolvedPersons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to show the involved persons in a change, in the zoom view of the change in the agent interface.

ITSMChange::Frontend::MenuModule###050-WorkOrderAdd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to add a workorder in the change zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###055-WorkOrderAddFromTemplate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to add a workorder in the change zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###060-Conditions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to access the conditions of a change in the its zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###070-Link
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu that allows linking a change with another object in the change zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###080-MoveTimeSlot
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu that allows moving the time slot of a change in its zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###090-Template
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu that allows defining a change as a template in the zoom view of the change, in the agent interface.

ITSMChange::Frontend::MenuModule###100-ChangeDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to delete a change in its zoom view of the agent interface.

ITSMChange::Frontend::MenuModule###110-ChangeReset
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to reset a change and its workorders in its zoom view of the agent interface.

Frontend::Agent::ITSMChangeOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::Overview###Small
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines an overview module to show the small view of a change list.

Frontend::Agent::ITSMTemplateOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::TemplateOverview###Small
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines an overview module to show the small view of a template list.

Frontend::Agent::ITSMWorkOrder::MenuModule
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Frontend::MenuModule###000-Back
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to go back in the workorder zoom view of the agent interface.

ITSMWorkOrder::Frontend::MenuModule###010-History
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to access the history of a workorder in the its zoom view of the agent interface.

ITSMWorkOrder::Frontend::MenuModule###020-Print
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to print a workorder in the its zoom view of the agent interface.

ITSMWorkOrder::Frontend::MenuModule###030-Edit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to edit a workorder in the its zoom view of the agent interface.

ITSMWorkOrder::Frontend::MenuModule###035-Take
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu that allows taking a workorder in the its zoom view of the agent interface.

ITSMWorkOrder::Frontend::MenuModule###040-WorkOrderAgent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu that allows changing the workorder agent, in the zoom view of the workorder of the agent interface.

ITSMWorkOrder::Frontend::MenuModule###050-Report
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu that allows editing the report of a workorder, in the zoom view of the workorder of the agent interface.

ITSMWorkOrder::Frontend::MenuModule###060-Link
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu that allows linking a workorder with another object in the zoom view of the workorder of the agent interface.

ITSMWorkOrder::Frontend::MenuModule###080-Template
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu that allows defining a workorder as a template in the zoom view of the workorder, in the agent interface.

ITSMWorkOrder::Frontend::MenuModule###090-WorkOrderDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to delete a workorder in its zoom view of the agent interface.

Frontend::Agent::LinkObject
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

LinkObject::ComplexTable::SettingsVisibility###ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Define Actions where a settings button is available in the linked objects widget (LinkObject::ViewMode = "complex"). Please note that these Actions must have registered the following JS and CSS files: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js and Core.Agent.LinkObject.js.

LinkObject::ComplexTable###ITSMChange
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Define which columns are shown in the linked Changes widget (LinkObject::ViewMode = "complex"). Note: Only Change attributes are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.

LinkObject::ComplexTable###ITSMWorkOrder
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Define which columns are shown in the linked Workorder widget (LinkObject::ViewMode = "complex"). Note: Only Workorder attributes are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.

Frontend::Agent::ModuleRegistration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Module###AgentITSMCABMemberSearch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChange
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeAdd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeAddFromTemplate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeCondition
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeConditionEdit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeEdit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeHistory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeHistoryZoom
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeInvolvedPersons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeManager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeMyCAB
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeMyChanges
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeMyWorkOrders
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangePIR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangePrint
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangePSA
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeReset
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeSchedule
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeSearch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeTemplate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeTimeSlot
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMChangeZoom
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMTemplateDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMTemplateEdit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMTemplateEditCAB
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMTemplateEditContent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMTemplateOverview
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMUserSearch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderAdd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderAddFromTemplate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderAgent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderDelete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderEdit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderHistory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderHistoryZoom
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderReport
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderTake
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderTemplate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMWorkOrderZoom
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Agent::ModuleRegistration::Loader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Loader::Module::AgentITSMChange###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeAdd###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeCondition###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeConditionEdit###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeEdit###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeHistory###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeInvolvedPersons###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeManager###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeMyCAB###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeMyChanges###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeMyWorkOrders###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangePIR###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangePSA###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeSearch###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeTimeSlot###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMChangeZoom###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMTemplateEditCAB###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMTemplateOverview###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMWorkOrderHistory###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentITSMWorkOrderZoom###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Frontend::Agent::ModuleRegistration::MainMenu
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Navigation###AgentITSMChange###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangeAdd###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangeAddFromTemplate###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangeManager###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangeMyCAB###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangeMyChanges###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangeMyWorkOrders###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangePIR###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangePSA###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangeSchedule###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMChangeSearch###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentITSMTemplateOverview###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Agent::ModuleRegistration::MainMenu::Search
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Search###Change
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Change search backend router of the agent interface.

Frontend::Search::JavaScript###Change
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
JavaScript function for the search frontend.

Frontend::Agent::ToolBar
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::ToolBarModule###101-ITSMChangeManagement::ChangeManager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Agent interface notification module to see the number of changes managed by the user.

Frontend::ToolBarModule###102-ITSMChangeManagement::MyChanges
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Agent interface notification module to see the number of changes.

Frontend::ToolBarModule###103-ITSMChangeManagement::MyWorkOrders
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Agent interface notification module to see the number of workorders.

Frontend::ToolBarModule###104-ITSMChangeManagement::MyCAB
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Agent interface notification module to see the number of change advisory boards.

Frontend::Agent::View::ITSMChangeAdd
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeAdd###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to create changes.

ITSMChange::Frontend::AgentITSMChangeAdd###RequestedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the requested date should be set by customer.

ITSMChange::Frontend::AgentITSMChangeAdd###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the change add screen of the agent interface.

Frontend::Agent::View::ITSMChangeAddFromTemplate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeAddFromTemplate###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to create changes from templates.

Frontend::Agent::View::ITSMChangeCABTemplate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeCABTemplate###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to create a template from a changes' CAB.

Frontend::Agent::View::ITSMChangeCondition
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeCondition###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the conditions of changes.

Frontend::Agent::View::ITSMChangeConditionEdit
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeConditionEdit###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to edit the conditions of changes.

Frontend::Agent::View::ITSMChangeDelete
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeDelete###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to delete changes.

ITSMChange::Frontend::AgentITSMChangeDelete###ChangeStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the change states that will be allowed to delete.

Frontend::Agent::View::ITSMChangeEdit
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeEdit###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to edit changes.

ITSMChange::Frontend::AgentITSMChangeEdit###RequestedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the requested date should be set by customer.

ITSMChange::Frontend::AgentITSMChangeEdit###ChangeState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the change state can be set in the change edit screen of the agent interface.

ITSMChange::Frontend::AgentITSMChangeEdit###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the change edit screen of the agent interface.

Frontend::Agent::View::ITSMChangeHistory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::HistoryOrder
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows the change history (reverse ordered) in the agent interface.

ITSMChange::Frontend::AgentITSMChangeHistory###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the history of a change.

Frontend::Agent::View::ITSMChangeHistoryZoom
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeHistoryZoom###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the history zoom of a change.

Frontend::Agent::View::ITSMChangeInvolvedPersons
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeInvolvedPersons###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to edit the involved persons of a change.

Frontend::Agent::View::ITSMChangeManagerOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeManager###Filter::ChangeStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the change states that will be used as filters in the change manager overview.

ITSMChange::Frontend::AgentITSMChangeManager###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the change manager overview.

ITSMChange::Frontend::AgentITSMChangeManager###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view list of changes where the user is the change manager.

ITSMChange::Frontend::AgentITSMChangeManager###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the change manager overview. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMChangeManager###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria in the change manager overview.

Frontend::Agent::View::ITSMChangeMyCABOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeMyCAB###Filter::ChangeStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the change states that will be used as filters in the MyCAB overview.

ITSMChange::Frontend::AgentITSMChangeMyCAB###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the MyCAB overview.

ITSMChange::Frontend::AgentITSMChangeMyCAB###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view list of changes where the user is a CAB member.

ITSMChange::Frontend::AgentITSMChangeMyCAB###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the MyCAB overview. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMChangeMyCAB###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria of the changes in the MyCAB overview.

Frontend::Agent::View::ITSMChangeMyChangesOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeMyChanges###Filter::ChangeStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the change states that will be used as filters in the MyChanges overview.

ITSMChange::Frontend::AgentITSMChangeMyChanges###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the MyChanges overview.

ITSMChange::Frontend::AgentITSMChangeMyChanges###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the list of own changes.

ITSMChange::Frontend::AgentITSMChangeMyChanges###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the MyChanges overview. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMChangeMyChanges###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria of the changes in the MyChanges overview.

Frontend::Agent::View::ITSMChangeMyWorkOrdersOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeMyWorkOrders###Filter::WorkOrderStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the workorder states that will be used as filters in the MyWorkorders overview.

ITSMChange::Frontend::AgentITSMChangeMyWorkOrders###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the MyWorkorders overview.

ITSMChange::Frontend::AgentITSMChangeMyWorkOrders###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the list of own workorders.

ITSMChange::Frontend::AgentITSMChangeMyWorkOrders###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the MyWorkorders overview. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMChangeMyWorkOrders###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria of the changes in the MyWorkorders overview.

Frontend::Agent::View::ITSMChangeOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChange###Filter::ChangeStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the change states that will be used as filters in the change overview.

ITSMChange::Frontend::AgentITSMChange###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the change overview.

ITSMChange::Frontend::AgentITSMChange###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to access the overview of all changes.

ITSMChange::Frontend::AgentITSMChange###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the change overview. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMChange###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria in the change overview.

Frontend::Agent::View::ITSMChangePIROverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangePIR###Filter::WorkOrderStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the workorder states that will be used as filters in the PIR overview.

ITSMChange::Frontend::AgentITSMChangePIR###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the PIR overview.

ITSMChange::Frontend::AgentITSMChangePIR###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the list of changes with an upcoming PIR (Post Implementation Review).

ITSMChange::Frontend::AgentITSMChangePIR###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the PIR overview. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMChangePIR###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria of the changes in the PIR overview.

ITSMChange::Frontend::AgentITSMChangePIR###WorkOrderTypes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the workorder types that will be used to show the PIR overview.

Frontend::Agent::View::ITSMChangePSAOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangePSA###Filter::ChangeStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the change states that will be used as filters in the Change PSA overview.

ITSMChange::Frontend::AgentITSMChangePSA###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the change PSA overview.

ITSMChange::Frontend::AgentITSMChangePSA###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the list of change PSA.

ITSMChange::Frontend::AgentITSMChangePSA###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the Change PSA overview. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMChangePSA###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria in the change PSA overview.

Frontend::Agent::View::ITSMChangePrint
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangePrint###AccountedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if it will be possible to print the accounted time.

ITSMChange::Frontend::AgentITSMChangePrint###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to print a change.

ITSMChange::Frontend::AgentITSMChangePrint###PlannedEffort
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if it will be possible to print the planned effort.

ITSMChange::Frontend::AgentITSMChangePrint###RequestedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the requested date should be print by customer.

ITSMChange::Frontend::AgentITSMChangePrint###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields (for changes and workorders) shown in the change print screen of the agent interface.

Frontend::Agent::View::ITSMChangeReset
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeReset###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to reset changes.

Frontend::Agent::View::ITSMChangeScheduleOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeSchedule###Filter::ChangeStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the change states that will be used as filters in the Change Schedule overview.

ITSMChange::Frontend::AgentITSMChangeSchedule###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the change schedule overview.

ITSMChange::Frontend::AgentITSMChangeSchedule###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the list of Change Schedule.

ITSMChange::Frontend::AgentITSMChangeSchedule###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the Change Schedule overview. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMChangeSchedule###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria in the change schedule overview.

Frontend::Agent::View::ITSMChangeSearch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeSearch###RequestedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the requested date should be searched by customer.

ITSMChange::Frontend::AgentITSMChangeSearch###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the change search screen of the agent interface.

ITSMChange::Frontend::AgentITSMChangeSearch###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the change search. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMChangeSearch###SearchCSVData
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Data used to export the search result in CSV format.

Frontend::Agent::View::ITSMChangeTemplate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeTemplate###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to create a template from a change.

Frontend::Agent::View::ITSMChangeTemplateDelete
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMTemplateDelete###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to delete a template.

Frontend::Agent::View::ITSMChangeTemplateEdit
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMTemplateEdit###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to edit a template.

Frontend::Agent::View::ITSMChangeTemplateEditCAB
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMTemplateEditCAB###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to edit the content of a template.

Frontend::Agent::View::ITSMChangeTemplateEditContent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMTemplateEditContent###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to edit the content of a template.

ITSMChange::Frontend::AgentITSMTemplateEditContent###DefaultChangeTitle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default change title for a dummy change which is needed to edit a workorder template.

Frontend::Agent::View::ITSMChangeTemplateOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMTemplateOverview###Filter::TemplateTypes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the template types that will be used as filters in the template overview.

ITSMChange::Frontend::AgentITSMTemplateOverview###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the template overview.

ITSMChange::Frontend::AgentITSMTemplateOverview###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view overview over all templates.

ITSMChange::Frontend::AgentITSMTemplateOverview###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the template overview. This option has no effect on the position of the column.

ITSMChange::Frontend::AgentITSMTemplateOverview###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria of the changes in the template overview.

Frontend::Agent::View::ITSMChangeTimeSlot
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeTimeSlot###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to move changes in time.

Frontend::Agent::View::ITSMChangeZoom
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMChangeZoom###AccountedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the accounted time should be shown.

ITSMChange::Frontend::AgentITSMChangeZoom###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view changes.

ITSMChange::Frontend::AgentITSMChangeZoom###PlannedEffort
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the planned effort should be shown.

ITSMChange::Frontend::AgentITSMChangeZoom###RequestedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the requested date should be shown by customer.

ITSMChange::Frontend::AgentITSMChangeZoom###WorkOrderState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the workorder state should be shown.

ITSMChange::Frontend::AgentITSMChangeZoom###WorkOrderTitle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the workorder title should be shown.

ITSMChange::Frontend::AgentITSMChangeZoom###WorkOrderGraph
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines shown graph attributes.

ITSMChange::Frontend::AgentITSMChangeZoom###Tooltip::WorkOrderAttributes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown attributes of a workorder in the tooltip of the workorder graph in the change zoom. To show workorder dynamic fields in the tooltip, they must be specified like DynamicField_WorkOrderFieldName1, DynamicField_WorkOrderFieldName2, etc.

ITSMChange::Frontend::AgentITSMChangeZoom###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the change zoom screen of the agent interface.

ITSMChange::Frontend::AgentHTMLFieldHeightDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Set the default height (in pixels) of inline HTML fields in the change zoom screen and workorder zoom screen of the agent interface.

ITSMChange::Frontend::AgentHTMLFieldHeightMax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Set the maximum height (in pixels) of inline HTML fields in the change zoom screen and workorder zoom screen of the agent interface.

Frontend::Agent::View::ITSMWorkOrderAdd
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMWorkOrderAdd###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the workorder add screen of the agent interface.

ITSMChange::Frontend::AgentITSMWorkOrderAdd###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to add a workorder.

ITSMChange::Frontend::AgentITSMWorkOrderAdd###PlannedEffort
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the planned effort should be shown.

Frontend::Agent::View::ITSMWorkOrderAddFromTemplate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::AgentITSMWorkOrderAddFromTemplate###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to add a workorder.

Frontend::Agent::View::ITSMWorkOrderAgent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Frontend::AgentITSMWorkOrderAgent###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to change the workorder agent.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderTake###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges in order for an agent to take a workorder.

Frontend::Agent::View::ITSMWorkOrderDelete
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Frontend::AgentITSMWorkOrderDelete###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to delete a workorder.

Frontend::Agent::View::ITSMWorkOrderEdit
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Frontend::AgentITSMWorkOrderEdit###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the workorder edit screen of the agent interface.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderEdit###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to edit a workorder.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderEdit###PlannedEffort
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the planned effort should be shown.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderEdit###MoveFollowingWorkOrders
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a checkbox in the workorder edit screen of the agent interface that defines if the the following workorders should also be moved if a workorder is modified and the planned end time has changed.

Frontend::Agent::View::ITSMWorkOrderHistory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Frontend::AgentITSMWorkOrderHistory###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the history of a workorder.

Frontend::Agent::View::ITSMWorkOrderHistoryZoom
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Frontend::AgentITSMWorkOrderHistoryZoom###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view the history zoom of a workorder.

Frontend::Agent::View::ITSMWorkOrderReport
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Frontend::AgentITSMWorkOrderReport###AccountedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the accounted time should be shown.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderReport###ActualTimeSpan
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the actual start and end times should be set.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderReport###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the workorder report screen of the agent interface.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderReport###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to write a report for the workorder.

Frontend::Agent::View::ITSMWorkOrderTemplate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Frontend::AgentITSMWorkOrderTemplate###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to create a template from a workorder.

Frontend::Agent::View::ITSMWorkOrderZoom
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMWorkOrder::Frontend::AgentITSMWorkOrderZoom###AccountedTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the accounted time should be shown.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderZoom###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required privileges to view a workorder.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderZoom###PlannedEffort
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the planned effort should be shown.

ITSMWorkOrder::Frontend::AgentITSMWorkOrderZoom###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the workorder zoom screen of the agent interface.

Frontend::Agent::View::Preferences
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

PreferencesGroups###UserCreateWorkOrderNextMask
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Parameters for the UserCreateWorkOrderNextMask object in the preference view of the agent interface.

PreferencesGroups###ChangeOverviewSmallPageShown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Parameters for the pages (in which the changes are shown) of the small change overview.

PreferencesGroups###UserITSMChangeManagementTemplateEdit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Stores change and workorder ids and their corresponding template id, while a user is editing a template.

Frontend::Agent::View::Stats
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Stats::ExchangeAxis
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Determines if an agent can exchange the X-axis of a stat if he generates one.

Frontend::Agent::View::TicketZoom::MenuModule
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::MenuModule###317-ITSMChangeAdd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to show a link to create a change from this ticket. The ticket will be automatically linked with the new change.

Ticket::Frontend::MenuModule###318-ITSMChangeAddFromTemplate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Module to show a link to create a change from this ticket. The ticket will be automatically linked with the new change.

Frontend::Base::Loader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Loader::Agent::CommonJS###100-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
List of JS files to always be loaded for the agent interface.

Frontend::Base::NavBarModule
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::AdminModuleGroups###200-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines available groups for the admin overview screen.

Frontend::Customer::ModuleRegistration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

CustomerFrontend::Module###CustomerITSMChangeSchedule
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the customer interface.

Frontend::Customer::ModuleRegistration::Loader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Loader::Module::CustomerITSMChangeSchedule###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Frontend::Customer::ModuleRegistration::MainMenu
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

CustomerFrontend::Navigation###CustomerITSMChangeSchedule###003-ITSMChangeManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Customer::View::ITSMChangeScheduleOverview
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ITSMChange::Frontend::CustomerITSMChangeSchedule###Filter::ChangeStates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the change states that will be used as filters in the customer change schedule overview.

ITSMChange::Frontend::CustomerITSMChangeSchedule###Order::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort order in the customer change schedule overview.

ITSMChange::Frontend::CustomerITSMChangeSchedule###ShowColumns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the shown columns in the customer change schedule overview. This option has no effect on the position of the column.

ITSMChange::Frontend::CustomerITSMChangeSchedule###ShowOnlyChangesWithAllowedServices
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines that only changes containing Workorders linked with services, which the customer user has permission to use will be shown. Any other changes will not be displayed.

ITSMChange::Frontend::CustomerITSMChangeSchedule###SortBy::Default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default sort criteria of the changes in the customer change schedule overview.

About
=======

Contact
-------
| Rother OSS GmbH
| Email: hello@otobo.de
| Web: https://otobo.de

Version
-------
Author: |doc-vendor| / Version: |doc-version| / Date of release: |doc-datestamp|
