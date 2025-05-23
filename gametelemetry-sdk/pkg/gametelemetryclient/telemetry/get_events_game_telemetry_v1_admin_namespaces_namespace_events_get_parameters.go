// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package telemetry

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams creates a new GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams object
// with the default values initialized.
func NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams() *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	var (
		limitDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParamsWithTimeout creates a new GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParamsWithTimeout(timeout time.Duration) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	var (
		limitDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParamsWithContext creates a new GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParamsWithContext(ctx context.Context) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	var (
		limitDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParamsWithHTTPClient creates a new GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParamsWithHTTPClient(client *http.Client) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	var (
		limitDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams contains all the parameters to send to the API endpoint
for the get events game telemetry v1 admin namespaces namespace events get operation typically these are written to a http.Request
*/
type GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*DeviceType
	  Game telemetry DeviceType.

	*/
	DeviceType *string
	/*EndTime
	  End time of data to be queried. Default: Current time in UTC.

	*/
	EndTime *string
	/*EventID
	  Game telemetry EventId.

	*/
	EventID *string
	/*EventName
	  Game telemetry EventName.

	*/
	EventName *string
	/*EventPayload
	  Game telemetry payload to be query. Format: [foo].[bar]:[keyword]. e.g: player.username:tom*

	*/
	EventPayload *string
	/*FlightID
	  Game telemetry FlightId.

	*/
	FlightID *string
	/*Limit
	  Limit of response data number.

	*/
	Limit *int64
	/*Offset
	  Offset of response data number.

	*/
	Offset *int64
	/*StartTime
	  Start time of data to be queried. Default: Current time in UTC minus 1 day.

	*/
	StartTime *string
	/*UserID
	  Game telemetry UserId.

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithTimeout(timeout time.Duration) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithContext(ctx context.Context) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithHTTPClient(client *http.Client) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithNamespace(namespace string) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithDeviceType adds the deviceType to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithDeviceType(deviceType *string) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetDeviceType(deviceType)
	return o
}

// SetDeviceType adds the deviceType to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetDeviceType(deviceType *string) {
	o.DeviceType = deviceType
}

// WithEndTime adds the endTime to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithEndTime(endTime *string) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetEndTime(endTime *string) {
	o.EndTime = endTime
}

// WithEventID adds the eventID to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithEventID(eventID *string) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetEventID(eventID)
	return o
}

// SetEventID adds the eventId to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetEventID(eventID *string) {
	o.EventID = eventID
}

// WithEventName adds the eventName to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithEventName(eventName *string) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetEventName(eventName)
	return o
}

// SetEventName adds the eventName to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetEventName(eventName *string) {
	o.EventName = eventName
}

// WithEventPayload adds the eventPayload to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithEventPayload(eventPayload *string) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetEventPayload(eventPayload)
	return o
}

// SetEventPayload adds the eventPayload to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetEventPayload(eventPayload *string) {
	o.EventPayload = eventPayload
}

// WithFlightID adds the flightID to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithFlightID(flightID *string) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetFlightID(flightID)
	return o
}

// SetFlightID adds the flightId to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetFlightID(flightID *string) {
	o.FlightID = flightID
}

// WithLimit adds the limit to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithLimit(limit *int64) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithOffset(offset *int64) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithStartTime adds the startTime to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithStartTime(startTime *string) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetStartTime(startTime *string) {
	o.StartTime = startTime
}

// WithUserID adds the userID to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WithUserID(userID *string) *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get events game telemetry v1 admin namespaces namespace events get params
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.DeviceType != nil {

		// query param deviceType
		var qrDeviceType string
		if o.DeviceType != nil {
			qrDeviceType = *o.DeviceType
		}
		qDeviceType := qrDeviceType
		if qDeviceType != "" {
			if err := r.SetQueryParam("deviceType", qDeviceType); err != nil {
				return err
			}
		}

	}

	if o.EndTime != nil {

		// query param endTime
		var qrEndTime string
		if o.EndTime != nil {
			qrEndTime = *o.EndTime
		}
		qEndTime := qrEndTime
		if qEndTime != "" {
			if err := r.SetQueryParam("endTime", qEndTime); err != nil {
				return err
			}
		}

	}

	if o.EventID != nil {

		// query param eventId
		var qrEventID string
		if o.EventID != nil {
			qrEventID = *o.EventID
		}
		qEventID := qrEventID
		if qEventID != "" {
			if err := r.SetQueryParam("eventId", qEventID); err != nil {
				return err
			}
		}

	}

	if o.EventName != nil {

		// query param eventName
		var qrEventName string
		if o.EventName != nil {
			qrEventName = *o.EventName
		}
		qEventName := qrEventName
		if qEventName != "" {
			if err := r.SetQueryParam("eventName", qEventName); err != nil {
				return err
			}
		}

	}

	if o.EventPayload != nil {

		// query param eventPayload
		var qrEventPayload string
		if o.EventPayload != nil {
			qrEventPayload = *o.EventPayload
		}
		qEventPayload := qrEventPayload
		if qEventPayload != "" {
			if err := r.SetQueryParam("eventPayload", qEventPayload); err != nil {
				return err
			}
		}

	}

	if o.FlightID != nil {

		// query param flightId
		var qrFlightID string
		if o.FlightID != nil {
			qrFlightID = *o.FlightID
		}
		qFlightID := qrFlightID
		if qFlightID != "" {
			if err := r.SetQueryParam("flightId", qFlightID); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.StartTime != nil {

		// query param startTime
		var qrStartTime string
		if o.StartTime != nil {
			qrStartTime = *o.StartTime
		}
		qStartTime := qrStartTime
		if qStartTime != "" {
			if err := r.SetQueryParam("startTime", qStartTime); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
