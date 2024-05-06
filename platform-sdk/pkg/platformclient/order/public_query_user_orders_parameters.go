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

// Get the enum in PublicQueryUserOrdersParams
const (
	PublicQueryUserOrdersCHARGEBACKConstant         = "CHARGEBACK"
	PublicQueryUserOrdersCHARGEBACKREVERSEDConstant = "CHARGEBACK_REVERSED"
	PublicQueryUserOrdersCHARGEDConstant            = "CHARGED"
	PublicQueryUserOrdersCLOSEDConstant             = "CLOSED"
	PublicQueryUserOrdersDELETEDConstant            = "DELETED"
	PublicQueryUserOrdersFULFILLEDConstant          = "FULFILLED"
	PublicQueryUserOrdersFULFILLFAILEDConstant      = "FULFILL_FAILED"
	PublicQueryUserOrdersINITConstant               = "INIT"
	PublicQueryUserOrdersREFUNDEDConstant           = "REFUNDED"
	PublicQueryUserOrdersREFUNDINGConstant          = "REFUNDING"
	PublicQueryUserOrdersREFUNDFAILEDConstant       = "REFUND_FAILED"
)

// NewPublicQueryUserOrdersParams creates a new PublicQueryUserOrdersParams object
// with the default values initialized.
func NewPublicQueryUserOrdersParams() *PublicQueryUserOrdersParams {
	var (
		discountedDefault = bool(false)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &PublicQueryUserOrdersParams{
		Discounted: &discountedDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryUserOrdersParamsWithTimeout creates a new PublicQueryUserOrdersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryUserOrdersParamsWithTimeout(timeout time.Duration) *PublicQueryUserOrdersParams {
	var (
		discountedDefault = bool(false)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &PublicQueryUserOrdersParams{
		Discounted: &discountedDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicQueryUserOrdersParamsWithContext creates a new PublicQueryUserOrdersParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryUserOrdersParamsWithContext(ctx context.Context) *PublicQueryUserOrdersParams {
	var (
		discountedDefault = bool(false)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &PublicQueryUserOrdersParams{
		Discounted: &discountedDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		Context: ctx,
	}
}

// NewPublicQueryUserOrdersParamsWithHTTPClient creates a new PublicQueryUserOrdersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryUserOrdersParamsWithHTTPClient(client *http.Client) *PublicQueryUserOrdersParams {
	var (
		discountedDefault = bool(false)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &PublicQueryUserOrdersParams{
		Discounted: &discountedDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicQueryUserOrdersParams contains all the parameters to send to the API endpoint
for the public query user orders operation typically these are written to a http.Request
*/
type PublicQueryUserOrdersParams struct {

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
	/*Limit*/
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

// WithTimeout adds the timeout to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithTimeout(timeout time.Duration) *PublicQueryUserOrdersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithContext(ctx context.Context) *PublicQueryUserOrdersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithHTTPClient(client *http.Client) *PublicQueryUserOrdersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicQueryUserOrdersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithNamespace(namespace string) *PublicQueryUserOrdersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithUserID(userID string) *PublicQueryUserOrdersParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithDiscounted adds the discounted to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithDiscounted(discounted *bool) *PublicQueryUserOrdersParams {
	o.SetDiscounted(discounted)
	return o
}

// SetDiscounted adds the discounted to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetDiscounted(discounted *bool) {
	o.Discounted = discounted
}

// WithItemID adds the itemID to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithItemID(itemID *string) *PublicQueryUserOrdersParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetItemID(itemID *string) {
	o.ItemID = itemID
}

// WithLimit adds the limit to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithLimit(limit *int32) *PublicQueryUserOrdersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithOffset(offset *int32) *PublicQueryUserOrdersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStatus adds the status to the public query user orders params
func (o *PublicQueryUserOrdersParams) WithStatus(status *string) *PublicQueryUserOrdersParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the public query user orders params
func (o *PublicQueryUserOrdersParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryUserOrdersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
