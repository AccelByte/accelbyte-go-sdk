// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package subscription

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

// Get the enum in QuerySubscriptionsParams
const (
	QuerySubscriptionsCHARGEDConstant           = "CHARGED"
	QuerySubscriptionsCHARGEFAILEDConstant      = "CHARGE_FAILED"
	QuerySubscriptionsNEVERConstant             = "NEVER"
	QuerySubscriptionsRECURRINGCHARGINGConstant = "RECURRING_CHARGING"
	QuerySubscriptionsSETUPConstant             = "SETUP"
)

// Get the enum in QuerySubscriptionsParams
const (
	QuerySubscriptionsACTIVEConstant    = "ACTIVE"
	QuerySubscriptionsCANCELLEDConstant = "CANCELLED"
	QuerySubscriptionsEXPIREDConstant   = "EXPIRED"
	QuerySubscriptionsINITConstant      = "INIT"
)

// Get the enum in QuerySubscriptionsParams
const (
	QuerySubscriptionsPLATFORMConstant = "PLATFORM"
	QuerySubscriptionsUSERConstant     = "USER"
)

// NewQuerySubscriptionsParams creates a new QuerySubscriptionsParams object
// with the default values initialized.
func NewQuerySubscriptionsParams() *QuerySubscriptionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySubscriptionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQuerySubscriptionsParamsWithTimeout creates a new QuerySubscriptionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQuerySubscriptionsParamsWithTimeout(timeout time.Duration) *QuerySubscriptionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySubscriptionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQuerySubscriptionsParamsWithContext creates a new QuerySubscriptionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQuerySubscriptionsParamsWithContext(ctx context.Context) *QuerySubscriptionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySubscriptionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQuerySubscriptionsParamsWithHTTPClient creates a new QuerySubscriptionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQuerySubscriptionsParamsWithHTTPClient(client *http.Client) *QuerySubscriptionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySubscriptionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QuerySubscriptionsParams contains all the parameters to send to the API endpoint
for the query subscriptions operation typically these are written to a http.Request
*/
type QuerySubscriptionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ChargeStatus*/
	ChargeStatus *string
	/*ItemID*/
	ItemID *string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Sku*/
	Sku *string
	/*Status*/
	Status *string
	/*SubscribedBy*/
	SubscribedBy *string
	/*UserID*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query subscriptions params
func (o *QuerySubscriptionsParams) WithTimeout(timeout time.Duration) *QuerySubscriptionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query subscriptions params
func (o *QuerySubscriptionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query subscriptions params
func (o *QuerySubscriptionsParams) WithContext(ctx context.Context) *QuerySubscriptionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query subscriptions params
func (o *QuerySubscriptionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query subscriptions params
func (o *QuerySubscriptionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query subscriptions params
func (o *QuerySubscriptionsParams) WithHTTPClient(client *http.Client) *QuerySubscriptionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query subscriptions params
func (o *QuerySubscriptionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query subscriptions params
func (o *QuerySubscriptionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the query subscriptions params
func (o *QuerySubscriptionsParams) WithNamespace(namespace string) *QuerySubscriptionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query subscriptions params
func (o *QuerySubscriptionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithChargeStatus adds the chargeStatus to the query subscriptions params
func (o *QuerySubscriptionsParams) WithChargeStatus(chargeStatus *string) *QuerySubscriptionsParams {
	o.SetChargeStatus(chargeStatus)
	return o
}

// SetChargeStatus adds the chargeStatus to the query subscriptions params
func (o *QuerySubscriptionsParams) SetChargeStatus(chargeStatus *string) {
	o.ChargeStatus = chargeStatus
}

// WithItemID adds the itemID to the query subscriptions params
func (o *QuerySubscriptionsParams) WithItemID(itemID *string) *QuerySubscriptionsParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the query subscriptions params
func (o *QuerySubscriptionsParams) SetItemID(itemID *string) {
	o.ItemID = itemID
}

// WithLimit adds the limit to the query subscriptions params
func (o *QuerySubscriptionsParams) WithLimit(limit *int32) *QuerySubscriptionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query subscriptions params
func (o *QuerySubscriptionsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query subscriptions params
func (o *QuerySubscriptionsParams) WithOffset(offset *int32) *QuerySubscriptionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query subscriptions params
func (o *QuerySubscriptionsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSku adds the sku to the query subscriptions params
func (o *QuerySubscriptionsParams) WithSku(sku *string) *QuerySubscriptionsParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the query subscriptions params
func (o *QuerySubscriptionsParams) SetSku(sku *string) {
	o.Sku = sku
}

// WithStatus adds the status to the query subscriptions params
func (o *QuerySubscriptionsParams) WithStatus(status *string) *QuerySubscriptionsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query subscriptions params
func (o *QuerySubscriptionsParams) SetStatus(status *string) {
	o.Status = status
}

// WithSubscribedBy adds the subscribedBy to the query subscriptions params
func (o *QuerySubscriptionsParams) WithSubscribedBy(subscribedBy *string) *QuerySubscriptionsParams {
	o.SetSubscribedBy(subscribedBy)
	return o
}

// SetSubscribedBy adds the subscribedBy to the query subscriptions params
func (o *QuerySubscriptionsParams) SetSubscribedBy(subscribedBy *string) {
	o.SubscribedBy = subscribedBy
}

// WithUserID adds the userID to the query subscriptions params
func (o *QuerySubscriptionsParams) WithUserID(userID *string) *QuerySubscriptionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query subscriptions params
func (o *QuerySubscriptionsParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QuerySubscriptionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ChargeStatus != nil {

		// query param chargeStatus
		var qrChargeStatus string
		if o.ChargeStatus != nil {
			qrChargeStatus = *o.ChargeStatus
		}
		qChargeStatus := qrChargeStatus
		if qChargeStatus != "" {
			if err := r.SetQueryParam("chargeStatus", qChargeStatus); err != nil {
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

	if o.Sku != nil {

		// query param sku
		var qrSku string
		if o.Sku != nil {
			qrSku = *o.Sku
		}
		qSku := qrSku
		if qSku != "" {
			if err := r.SetQueryParam("sku", qSku); err != nil {
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

	if o.SubscribedBy != nil {

		// query param subscribedBy
		var qrSubscribedBy string
		if o.SubscribedBy != nil {
			qrSubscribedBy = *o.SubscribedBy
		}
		qSubscribedBy := qrSubscribedBy
		if qSubscribedBy != "" {
			if err := r.SetQueryParam("subscribedBy", qSubscribedBy); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
