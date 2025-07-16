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

// Deprecated: 2025-07-16 - Use PublicQueryUserSubscriptionsChargeStatus<EnumValue>Constant instead.
// Get the enum in PublicQueryUserSubscriptionsParams
const (
	PublicQueryUserSubscriptionsCHARGEDConstant           = "CHARGED"
	PublicQueryUserSubscriptionsCHARGEFAILEDConstant      = "CHARGE_FAILED"
	PublicQueryUserSubscriptionsNEVERConstant             = "NEVER"
	PublicQueryUserSubscriptionsRECURRINGCHARGINGConstant = "RECURRING_CHARGING"
	PublicQueryUserSubscriptionsSETUPConstant             = "SETUP"
)

// Deprecated: 2025-07-16 - Use PublicQueryUserSubscriptionsStatus<EnumValue>Constant instead.
// Get the enum in PublicQueryUserSubscriptionsParams
const (
	PublicQueryUserSubscriptionsACTIVEConstant    = "ACTIVE"
	PublicQueryUserSubscriptionsCANCELLEDConstant = "CANCELLED"
	PublicQueryUserSubscriptionsEXPIREDConstant   = "EXPIRED"
	PublicQueryUserSubscriptionsINITConstant      = "INIT"
)

// Deprecated: 2025-07-16 - Use PublicQueryUserSubscriptionsSubscribedBy<EnumValue>Constant instead.
// Get the enum in PublicQueryUserSubscriptionsParams
const (
	PublicQueryUserSubscriptionsPLATFORMConstant = "PLATFORM"
	PublicQueryUserSubscriptionsUSERConstant     = "USER"
)

// Get the enum in PublicQueryUserSubscriptionsParams
const (
	PublicQueryUserSubscriptionsChargeStatusCHARGEDConstant           = "CHARGED"
	PublicQueryUserSubscriptionsChargeStatusCHARGEFAILEDConstant      = "CHARGE_FAILED"
	PublicQueryUserSubscriptionsChargeStatusNEVERConstant             = "NEVER"
	PublicQueryUserSubscriptionsChargeStatusRECURRINGCHARGINGConstant = "RECURRING_CHARGING"
	PublicQueryUserSubscriptionsChargeStatusSETUPConstant             = "SETUP"
)

// Get the enum in PublicQueryUserSubscriptionsParams
const (
	PublicQueryUserSubscriptionsStatusACTIVEConstant    = "ACTIVE"
	PublicQueryUserSubscriptionsStatusCANCELLEDConstant = "CANCELLED"
	PublicQueryUserSubscriptionsStatusEXPIREDConstant   = "EXPIRED"
	PublicQueryUserSubscriptionsStatusINITConstant      = "INIT"
)

// Get the enum in PublicQueryUserSubscriptionsParams
const (
	PublicQueryUserSubscriptionsSubscribedByPLATFORMConstant = "PLATFORM"
	PublicQueryUserSubscriptionsSubscribedByUSERConstant     = "USER"
)

// NewPublicQueryUserSubscriptionsParams creates a new PublicQueryUserSubscriptionsParams object
// with the default values initialized.
func NewPublicQueryUserSubscriptionsParams() *PublicQueryUserSubscriptionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicQueryUserSubscriptionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryUserSubscriptionsParamsWithTimeout creates a new PublicQueryUserSubscriptionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryUserSubscriptionsParamsWithTimeout(timeout time.Duration) *PublicQueryUserSubscriptionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicQueryUserSubscriptionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicQueryUserSubscriptionsParamsWithContext creates a new PublicQueryUserSubscriptionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryUserSubscriptionsParamsWithContext(ctx context.Context) *PublicQueryUserSubscriptionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicQueryUserSubscriptionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicQueryUserSubscriptionsParamsWithHTTPClient creates a new PublicQueryUserSubscriptionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryUserSubscriptionsParamsWithHTTPClient(client *http.Client) *PublicQueryUserSubscriptionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicQueryUserSubscriptionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicQueryUserSubscriptionsParams contains all the parameters to send to the API endpoint
for the public query user subscriptions operation typically these are written to a http.Request
*/
type PublicQueryUserSubscriptionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*ChargeStatus*/
	ChargeStatus *string
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
	/*Sku*/
	Sku *string
	/*Status*/
	Status *string
	/*SubscribedBy*/
	SubscribedBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithTimeout(timeout time.Duration) *PublicQueryUserSubscriptionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithContext(ctx context.Context) *PublicQueryUserSubscriptionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithHTTPClient(client *http.Client) *PublicQueryUserSubscriptionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicQueryUserSubscriptionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithNamespace(namespace string) *PublicQueryUserSubscriptionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithUserID(userID string) *PublicQueryUserSubscriptionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithChargeStatus adds the chargeStatus to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithChargeStatus(chargeStatus *string) *PublicQueryUserSubscriptionsParams {
	o.SetChargeStatus(chargeStatus)
	return o
}

// SetChargeStatus adds the chargeStatus to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetChargeStatus(chargeStatus *string) {
	o.ChargeStatus = chargeStatus
}

// WithItemID adds the itemID to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithItemID(itemID *string) *PublicQueryUserSubscriptionsParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetItemID(itemID *string) {
	o.ItemID = itemID
}

// WithLimit adds the limit to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithLimit(limit *int32) *PublicQueryUserSubscriptionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithOffset(offset *int32) *PublicQueryUserSubscriptionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSku adds the sku to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithSku(sku *string) *PublicQueryUserSubscriptionsParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetSku(sku *string) {
	o.Sku = sku
}

// WithStatus adds the status to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithStatus(status *string) *PublicQueryUserSubscriptionsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetStatus(status *string) {
	o.Status = status
}

// WithSubscribedBy adds the subscribedBy to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) WithSubscribedBy(subscribedBy *string) *PublicQueryUserSubscriptionsParams {
	o.SetSubscribedBy(subscribedBy)
	return o
}

// SetSubscribedBy adds the subscribedBy to the public query user subscriptions params
func (o *PublicQueryUserSubscriptionsParams) SetSubscribedBy(subscribedBy *string) {
	o.SubscribedBy = subscribedBy
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryUserSubscriptionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
