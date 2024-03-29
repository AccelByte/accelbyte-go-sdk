// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

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

// NewExistsAnyUserActiveEntitlementByItemIdsParams creates a new ExistsAnyUserActiveEntitlementByItemIdsParams object
// with the default values initialized.
func NewExistsAnyUserActiveEntitlementByItemIdsParams() *ExistsAnyUserActiveEntitlementByItemIdsParams {
	var ()
	return &ExistsAnyUserActiveEntitlementByItemIdsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExistsAnyUserActiveEntitlementByItemIdsParamsWithTimeout creates a new ExistsAnyUserActiveEntitlementByItemIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExistsAnyUserActiveEntitlementByItemIdsParamsWithTimeout(timeout time.Duration) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	var ()
	return &ExistsAnyUserActiveEntitlementByItemIdsParams{

		timeout: timeout,
	}
}

// NewExistsAnyUserActiveEntitlementByItemIdsParamsWithContext creates a new ExistsAnyUserActiveEntitlementByItemIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewExistsAnyUserActiveEntitlementByItemIdsParamsWithContext(ctx context.Context) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	var ()
	return &ExistsAnyUserActiveEntitlementByItemIdsParams{

		Context: ctx,
	}
}

// NewExistsAnyUserActiveEntitlementByItemIdsParamsWithHTTPClient creates a new ExistsAnyUserActiveEntitlementByItemIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExistsAnyUserActiveEntitlementByItemIdsParamsWithHTTPClient(client *http.Client) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	var ()
	return &ExistsAnyUserActiveEntitlementByItemIdsParams{
		HTTPClient: client,
	}
}

/*ExistsAnyUserActiveEntitlementByItemIdsParams contains all the parameters to send to the API endpoint
for the exists any user active entitlement by item ids operation typically these are written to a http.Request
*/
type ExistsAnyUserActiveEntitlementByItemIdsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*Platform*/
	Platform *string
	/*ItemIds*/
	ItemIds []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) WithTimeout(timeout time.Duration) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) WithContext(ctx context.Context) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) WithHTTPClient(client *http.Client) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) WithNamespace(namespace string) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) WithUserID(userID string) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithPlatform adds the platform to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) WithPlatform(platform *string) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithItemIds adds the itemIds to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) WithItemIds(itemIds []string) *ExistsAnyUserActiveEntitlementByItemIdsParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the exists any user active entitlement by item ids params
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) SetItemIds(itemIds []string) {
	o.ItemIds = itemIds
}

// WriteToRequest writes these params to a swagger request
func (o *ExistsAnyUserActiveEntitlementByItemIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Platform != nil {

		// query param platform
		var qrPlatform string
		if o.Platform != nil {
			qrPlatform = *o.Platform
		}
		qPlatform := qrPlatform
		if qPlatform != "" {
			if err := r.SetQueryParam("platform", qPlatform); err != nil {
				return err
			}
		}

	}

	valuesItemIds := o.ItemIds

	joinedItemIds := swag.JoinByFormat(valuesItemIds, "multi")
	// query array param itemIds
	if err := r.SetQueryParam("itemIds", joinedItemIds...); err != nil {
		return err
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
