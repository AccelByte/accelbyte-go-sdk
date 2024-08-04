// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

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

// Get the enum in QueryFulfillmentsParams
const (
	QueryFulfillmentsFULFILLEDConstant     = "FULFILLED"
	QueryFulfillmentsFULFILLFAILEDConstant = "FULFILL_FAILED"
	QueryFulfillmentsREVOKEDConstant       = "REVOKED"
	QueryFulfillmentsREVOKEFAILEDConstant  = "REVOKE_FAILED"
)

// NewQueryFulfillmentsParams creates a new QueryFulfillmentsParams object
// with the default values initialized.
func NewQueryFulfillmentsParams() *QueryFulfillmentsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryFulfillmentsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryFulfillmentsParamsWithTimeout creates a new QueryFulfillmentsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryFulfillmentsParamsWithTimeout(timeout time.Duration) *QueryFulfillmentsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryFulfillmentsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryFulfillmentsParamsWithContext creates a new QueryFulfillmentsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryFulfillmentsParamsWithContext(ctx context.Context) *QueryFulfillmentsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryFulfillmentsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryFulfillmentsParamsWithHTTPClient creates a new QueryFulfillmentsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryFulfillmentsParamsWithHTTPClient(client *http.Client) *QueryFulfillmentsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryFulfillmentsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryFulfillmentsParams contains all the parameters to send to the API endpoint
for the query fulfillments operation typically these are written to a http.Request
*/
type QueryFulfillmentsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*EndTime
	  end time is exclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	EndTime *string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*StartTime
	  start time is inclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	StartTime *string
	/*State*/
	State *string
	/*TransactionID*/
	TransactionID *string
	/*UserID*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query fulfillments params
func (o *QueryFulfillmentsParams) WithTimeout(timeout time.Duration) *QueryFulfillmentsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query fulfillments params
func (o *QueryFulfillmentsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query fulfillments params
func (o *QueryFulfillmentsParams) WithContext(ctx context.Context) *QueryFulfillmentsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query fulfillments params
func (o *QueryFulfillmentsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query fulfillments params
func (o *QueryFulfillmentsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query fulfillments params
func (o *QueryFulfillmentsParams) WithHTTPClient(client *http.Client) *QueryFulfillmentsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query fulfillments params
func (o *QueryFulfillmentsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query fulfillments params
func (o *QueryFulfillmentsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryFulfillmentsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query fulfillments params
func (o *QueryFulfillmentsParams) WithNamespace(namespace string) *QueryFulfillmentsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query fulfillments params
func (o *QueryFulfillmentsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndTime adds the endTime to the query fulfillments params
func (o *QueryFulfillmentsParams) WithEndTime(endTime *string) *QueryFulfillmentsParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the query fulfillments params
func (o *QueryFulfillmentsParams) SetEndTime(endTime *string) {
	o.EndTime = endTime
}

// WithLimit adds the limit to the query fulfillments params
func (o *QueryFulfillmentsParams) WithLimit(limit *int32) *QueryFulfillmentsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query fulfillments params
func (o *QueryFulfillmentsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query fulfillments params
func (o *QueryFulfillmentsParams) WithOffset(offset *int32) *QueryFulfillmentsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query fulfillments params
func (o *QueryFulfillmentsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStartTime adds the startTime to the query fulfillments params
func (o *QueryFulfillmentsParams) WithStartTime(startTime *string) *QueryFulfillmentsParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the query fulfillments params
func (o *QueryFulfillmentsParams) SetStartTime(startTime *string) {
	o.StartTime = startTime
}

// WithState adds the state to the query fulfillments params
func (o *QueryFulfillmentsParams) WithState(state *string) *QueryFulfillmentsParams {
	o.SetState(state)
	return o
}

// SetState adds the state to the query fulfillments params
func (o *QueryFulfillmentsParams) SetState(state *string) {
	o.State = state
}

// WithTransactionID adds the transactionID to the query fulfillments params
func (o *QueryFulfillmentsParams) WithTransactionID(transactionID *string) *QueryFulfillmentsParams {
	o.SetTransactionID(transactionID)
	return o
}

// SetTransactionID adds the transactionId to the query fulfillments params
func (o *QueryFulfillmentsParams) SetTransactionID(transactionID *string) {
	o.TransactionID = transactionID
}

// WithUserID adds the userID to the query fulfillments params
func (o *QueryFulfillmentsParams) WithUserID(userID *string) *QueryFulfillmentsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query fulfillments params
func (o *QueryFulfillmentsParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryFulfillmentsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.State != nil {

		// query param state
		var qrState string
		if o.State != nil {
			qrState = *o.State
		}
		qState := qrState
		if qState != "" {
			if err := r.SetQueryParam("state", qState); err != nil {
				return err
			}
		}

	}

	if o.TransactionID != nil {

		// query param transactionId
		var qrTransactionID string
		if o.TransactionID != nil {
			qrTransactionID = *o.TransactionID
		}
		qTransactionID := qrTransactionID
		if qTransactionID != "" {
			if err := r.SetQueryParam("transactionId", qTransactionID); err != nil {
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
