// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

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

// Deprecated: 2025-07-16 - Use QueryUserOrdersStatus<EnumValue>Constant instead.
// Get the enum in QueryUserOrdersParams
const (
	QueryUserOrdersCHARGEBACKConstant         = "CHARGEBACK"
	QueryUserOrdersCHARGEBACKREVERSEDConstant = "CHARGEBACK_REVERSED"
	QueryUserOrdersCHARGEDConstant            = "CHARGED"
	QueryUserOrdersCLOSEDConstant             = "CLOSED"
	QueryUserOrdersDELETEDConstant            = "DELETED"
	QueryUserOrdersFULFILLEDConstant          = "FULFILLED"
	QueryUserOrdersFULFILLFAILEDConstant      = "FULFILL_FAILED"
	QueryUserOrdersINITConstant               = "INIT"
	QueryUserOrdersREFUNDEDConstant           = "REFUNDED"
	QueryUserOrdersREFUNDINGConstant          = "REFUNDING"
	QueryUserOrdersREFUNDFAILEDConstant       = "REFUND_FAILED"
)

// Get the enum in QueryUserOrdersParams
const (
	QueryUserOrdersStatusCHARGEBACKConstant         = "CHARGEBACK"
	QueryUserOrdersStatusCHARGEBACKREVERSEDConstant = "CHARGEBACK_REVERSED"
	QueryUserOrdersStatusCHARGEDConstant            = "CHARGED"
	QueryUserOrdersStatusCLOSEDConstant             = "CLOSED"
	QueryUserOrdersStatusDELETEDConstant            = "DELETED"
	QueryUserOrdersStatusFULFILLEDConstant          = "FULFILLED"
	QueryUserOrdersStatusFULFILLFAILEDConstant      = "FULFILL_FAILED"
	QueryUserOrdersStatusINITConstant               = "INIT"
	QueryUserOrdersStatusREFUNDEDConstant           = "REFUNDED"
	QueryUserOrdersStatusREFUNDINGConstant          = "REFUNDING"
	QueryUserOrdersStatusREFUNDFAILEDConstant       = "REFUND_FAILED"
)

// NewQueryUserOrdersParams creates a new QueryUserOrdersParams object
// with the default values initialized.
func NewQueryUserOrdersParams() *QueryUserOrdersParams {
	var (
		discountedDefault = bool(false)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryUserOrdersParams{
		Discounted: &discountedDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryUserOrdersParamsWithTimeout creates a new QueryUserOrdersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryUserOrdersParamsWithTimeout(timeout time.Duration) *QueryUserOrdersParams {
	var (
		discountedDefault = bool(false)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryUserOrdersParams{
		Discounted: &discountedDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryUserOrdersParamsWithContext creates a new QueryUserOrdersParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryUserOrdersParamsWithContext(ctx context.Context) *QueryUserOrdersParams {
	var (
		discountedDefault = bool(false)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryUserOrdersParams{
		Discounted: &discountedDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		Context: ctx,
	}
}

// NewQueryUserOrdersParamsWithHTTPClient creates a new QueryUserOrdersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryUserOrdersParamsWithHTTPClient(client *http.Client) *QueryUserOrdersParams {
	var (
		discountedDefault = bool(false)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryUserOrdersParams{
		Discounted: &discountedDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryUserOrdersParams contains all the parameters to send to the API endpoint
for the query user orders operation typically these are written to a http.Request
*/
type QueryUserOrdersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*Discounted*/
	Discounted *bool
	/*ItemID*/
	ItemID *string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Status*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query user orders params
func (o *QueryUserOrdersParams) WithTimeout(timeout time.Duration) *QueryUserOrdersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query user orders params
func (o *QueryUserOrdersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query user orders params
func (o *QueryUserOrdersParams) WithContext(ctx context.Context) *QueryUserOrdersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query user orders params
func (o *QueryUserOrdersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query user orders params
func (o *QueryUserOrdersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query user orders params
func (o *QueryUserOrdersParams) WithHTTPClient(client *http.Client) *QueryUserOrdersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query user orders params
func (o *QueryUserOrdersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query user orders params
func (o *QueryUserOrdersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryUserOrdersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query user orders params
func (o *QueryUserOrdersParams) WithNamespace(namespace string) *QueryUserOrdersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query user orders params
func (o *QueryUserOrdersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query user orders params
func (o *QueryUserOrdersParams) WithUserID(userID string) *QueryUserOrdersParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query user orders params
func (o *QueryUserOrdersParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithDiscounted adds the discounted to the query user orders params
func (o *QueryUserOrdersParams) WithDiscounted(discounted *bool) *QueryUserOrdersParams {
	o.SetDiscounted(discounted)
	return o
}

// SetDiscounted adds the discounted to the query user orders params
func (o *QueryUserOrdersParams) SetDiscounted(discounted *bool) {
	o.Discounted = discounted
}

// WithItemID adds the itemID to the query user orders params
func (o *QueryUserOrdersParams) WithItemID(itemID *string) *QueryUserOrdersParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the query user orders params
func (o *QueryUserOrdersParams) SetItemID(itemID *string) {
	o.ItemID = itemID
}

// WithLimit adds the limit to the query user orders params
func (o *QueryUserOrdersParams) WithLimit(limit *int32) *QueryUserOrdersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query user orders params
func (o *QueryUserOrdersParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query user orders params
func (o *QueryUserOrdersParams) WithOffset(offset *int32) *QueryUserOrdersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query user orders params
func (o *QueryUserOrdersParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStatus adds the status to the query user orders params
func (o *QueryUserOrdersParams) WithStatus(status *string) *QueryUserOrdersParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query user orders params
func (o *QueryUserOrdersParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *QueryUserOrdersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Discounted != nil {

		// query param discounted
		var qrDiscounted bool
		if o.Discounted != nil {
			qrDiscounted = *o.Discounted
		}
		qDiscounted := swag.FormatBool(qrDiscounted)
		if qDiscounted != "" {
			if err := r.SetQueryParam("discounted", qDiscounted); err != nil {
				return err
			}
		}

	}

	if o.ItemID != nil {

		// query param itemId
		var qrItemID string
		if o.ItemID != nil {
			qrItemID = *o.ItemID
		}
		qItemID := qrItemID
		if qItemID != "" {
			if err := r.SetQueryParam("itemId", qItemID); err != nil {
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
