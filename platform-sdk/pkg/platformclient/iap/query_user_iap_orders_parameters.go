// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// Get the enum in QueryUserIAPOrdersParams
const (
	QueryUserIAPOrdersFAILEDConstant         = "FAILED"
	QueryUserIAPOrdersFULFILLEDConstant      = "FULFILLED"
	QueryUserIAPOrdersPARTIALREVOKEDConstant = "PARTIAL_REVOKED"
	QueryUserIAPOrdersREVOKEDConstant        = "REVOKED"
	QueryUserIAPOrdersVERIFIEDConstant       = "VERIFIED"
)

// Get the enum in QueryUserIAPOrdersParams
const (
	QueryUserIAPOrdersAPPLEConstant       = "APPLE"
	QueryUserIAPOrdersEPICGAMESConstant   = "EPICGAMES"
	QueryUserIAPOrdersGOOGLEConstant      = "GOOGLE"
	QueryUserIAPOrdersOCULUSConstant      = "OCULUS"
	QueryUserIAPOrdersPLAYSTATIONConstant = "PLAYSTATION"
	QueryUserIAPOrdersSTADIAConstant      = "STADIA"
	QueryUserIAPOrdersSTEAMConstant       = "STEAM"
	QueryUserIAPOrdersTWITCHConstant      = "TWITCH"
	QueryUserIAPOrdersXBOXConstant        = "XBOX"
)

// NewQueryUserIAPOrdersParams creates a new QueryUserIAPOrdersParams object
// with the default values initialized.
func NewQueryUserIAPOrdersParams() *QueryUserIAPOrdersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserIAPOrdersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryUserIAPOrdersParamsWithTimeout creates a new QueryUserIAPOrdersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryUserIAPOrdersParamsWithTimeout(timeout time.Duration) *QueryUserIAPOrdersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserIAPOrdersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryUserIAPOrdersParamsWithContext creates a new QueryUserIAPOrdersParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryUserIAPOrdersParamsWithContext(ctx context.Context) *QueryUserIAPOrdersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserIAPOrdersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryUserIAPOrdersParamsWithHTTPClient creates a new QueryUserIAPOrdersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryUserIAPOrdersParamsWithHTTPClient(client *http.Client) *QueryUserIAPOrdersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserIAPOrdersParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryUserIAPOrdersParams contains all the parameters to send to the API endpoint
for the query user iap orders operation typically these are written to a http.Request
*/
type QueryUserIAPOrdersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*EndTime
	  end time is exclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	EndTime *string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*ProductID*/
	ProductID *string
	/*StartTime
	  start time is inclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	StartTime *string
	/*Status*/
	Status *string
	/*Type*/
	Type *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithTimeout(timeout time.Duration) *QueryUserIAPOrdersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithContext(ctx context.Context) *QueryUserIAPOrdersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithHTTPClient(client *http.Client) *QueryUserIAPOrdersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryUserIAPOrdersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithNamespace(namespace string) *QueryUserIAPOrdersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithUserID(userID string) *QueryUserIAPOrdersParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEndTime adds the endTime to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithEndTime(endTime *string) *QueryUserIAPOrdersParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetEndTime(endTime *string) {
	o.EndTime = endTime
}

// WithLimit adds the limit to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithLimit(limit *int32) *QueryUserIAPOrdersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithOffset(offset *int32) *QueryUserIAPOrdersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithProductID adds the productID to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithProductID(productID *string) *QueryUserIAPOrdersParams {
	o.SetProductID(productID)
	return o
}

// SetProductID adds the productId to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetProductID(productID *string) {
	o.ProductID = productID
}

// WithStartTime adds the startTime to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithStartTime(startTime *string) *QueryUserIAPOrdersParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetStartTime(startTime *string) {
	o.StartTime = startTime
}

// WithStatus adds the status to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithStatus(status *string) *QueryUserIAPOrdersParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetStatus(status *string) {
	o.Status = status
}

// WithType adds the typeVar to the query user iap orders params
func (o *QueryUserIAPOrdersParams) WithType(typeVar *string) *QueryUserIAPOrdersParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the query user iap orders params
func (o *QueryUserIAPOrdersParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *QueryUserIAPOrdersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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

	if o.ProductID != nil {

		// query param productId
		var qrProductID string
		if o.ProductID != nil {
			qrProductID = *o.ProductID
		}
		qProductID := qrProductID
		if qProductID != "" {
			if err := r.SetQueryParam("productId", qProductID); err != nil {
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

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
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
