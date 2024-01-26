// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clawback

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

// Get the enum in QueryIAPClawbackHistoryParams
const (
	QueryIAPClawbackHistoryCHARGEBACKConstant         = "CHARGEBACK"
	QueryIAPClawbackHistoryCHARGEBACKREVERSEDConstant = "CHARGEBACK_REVERSED"
	QueryIAPClawbackHistoryOTHERConstant              = "OTHER"
	QueryIAPClawbackHistoryREFUNDConstant             = "REFUND"
)

// Get the enum in QueryIAPClawbackHistoryParams
const (
	QueryIAPClawbackHistoryFAILConstant    = "FAIL"
	QueryIAPClawbackHistoryIGNOREDConstant = "IGNORED"
	QueryIAPClawbackHistoryINITConstant    = "INIT"
	QueryIAPClawbackHistorySUCCESSConstant = "SUCCESS"
)

// NewQueryIAPClawbackHistoryParams creates a new QueryIAPClawbackHistoryParams object
// with the default values initialized.
func NewQueryIAPClawbackHistoryParams() *QueryIAPClawbackHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryIAPClawbackHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryIAPClawbackHistoryParamsWithTimeout creates a new QueryIAPClawbackHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryIAPClawbackHistoryParamsWithTimeout(timeout time.Duration) *QueryIAPClawbackHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryIAPClawbackHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryIAPClawbackHistoryParamsWithContext creates a new QueryIAPClawbackHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryIAPClawbackHistoryParamsWithContext(ctx context.Context) *QueryIAPClawbackHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryIAPClawbackHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryIAPClawbackHistoryParamsWithHTTPClient creates a new QueryIAPClawbackHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryIAPClawbackHistoryParamsWithHTTPClient(client *http.Client) *QueryIAPClawbackHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryIAPClawbackHistoryParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryIAPClawbackHistoryParams contains all the parameters to send to the API endpoint
for the query iap clawback history operation typically these are written to a http.Request
*/
type QueryIAPClawbackHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*EndTime
	  end time is exclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	EndTime *string
	/*EventType
	  event type

	*/
	EventType *string
	/*ExternalOrderID
	  third party order id

	*/
	ExternalOrderID *string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*StartTime
	  start time is inclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	StartTime *string
	/*Status
	  status

	*/
	Status *string
	/*UserID
	  AGS user id

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithTimeout(timeout time.Duration) *QueryIAPClawbackHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithContext(ctx context.Context) *QueryIAPClawbackHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithHTTPClient(client *http.Client) *QueryIAPClawbackHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryIAPClawbackHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithNamespace(namespace string) *QueryIAPClawbackHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndTime adds the endTime to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithEndTime(endTime *string) *QueryIAPClawbackHistoryParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetEndTime(endTime *string) {
	o.EndTime = endTime
}

// WithEventType adds the eventType to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithEventType(eventType *string) *QueryIAPClawbackHistoryParams {
	o.SetEventType(eventType)
	return o
}

// SetEventType adds the eventType to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetEventType(eventType *string) {
	o.EventType = eventType
}

// WithExternalOrderID adds the externalOrderID to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithExternalOrderID(externalOrderID *string) *QueryIAPClawbackHistoryParams {
	o.SetExternalOrderID(externalOrderID)
	return o
}

// SetExternalOrderID adds the externalOrderId to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetExternalOrderID(externalOrderID *string) {
	o.ExternalOrderID = externalOrderID
}

// WithLimit adds the limit to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithLimit(limit *int32) *QueryIAPClawbackHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithOffset(offset *int32) *QueryIAPClawbackHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStartTime adds the startTime to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithStartTime(startTime *string) *QueryIAPClawbackHistoryParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetStartTime(startTime *string) {
	o.StartTime = startTime
}

// WithStatus adds the status to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithStatus(status *string) *QueryIAPClawbackHistoryParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetStatus(status *string) {
	o.Status = status
}

// WithUserID adds the userID to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) WithUserID(userID *string) *QueryIAPClawbackHistoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query iap clawback history params
func (o *QueryIAPClawbackHistoryParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryIAPClawbackHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.EventType != nil {

		// query param eventType
		var qrEventType string
		if o.EventType != nil {
			qrEventType = *o.EventType
		}
		qEventType := qrEventType
		if qEventType != "" {
			if err := r.SetQueryParam("eventType", qEventType); err != nil {
				return err
			}
		}

	}

	if o.ExternalOrderID != nil {

		// query param externalOrderId
		var qrExternalOrderID string
		if o.ExternalOrderID != nil {
			qrExternalOrderID = *o.ExternalOrderID
		}
		qExternalOrderID := qrExternalOrderID
		if qExternalOrderID != "" {
			if err := r.SetQueryParam("externalOrderId", qExternalOrderID); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
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

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
