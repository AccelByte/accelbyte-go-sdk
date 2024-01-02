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

// NewExistsAnyUserActiveEntitlementParams creates a new ExistsAnyUserActiveEntitlementParams object
// with the default values initialized.
func NewExistsAnyUserActiveEntitlementParams() *ExistsAnyUserActiveEntitlementParams {
	var ()
	return &ExistsAnyUserActiveEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExistsAnyUserActiveEntitlementParamsWithTimeout creates a new ExistsAnyUserActiveEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExistsAnyUserActiveEntitlementParamsWithTimeout(timeout time.Duration) *ExistsAnyUserActiveEntitlementParams {
	var ()
	return &ExistsAnyUserActiveEntitlementParams{

		timeout: timeout,
	}
}

// NewExistsAnyUserActiveEntitlementParamsWithContext creates a new ExistsAnyUserActiveEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewExistsAnyUserActiveEntitlementParamsWithContext(ctx context.Context) *ExistsAnyUserActiveEntitlementParams {
	var ()
	return &ExistsAnyUserActiveEntitlementParams{

		Context: ctx,
	}
}

// NewExistsAnyUserActiveEntitlementParamsWithHTTPClient creates a new ExistsAnyUserActiveEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExistsAnyUserActiveEntitlementParamsWithHTTPClient(client *http.Client) *ExistsAnyUserActiveEntitlementParams {
	var ()
	return &ExistsAnyUserActiveEntitlementParams{
		HTTPClient: client,
	}
}

/*ExistsAnyUserActiveEntitlementParams contains all the parameters to send to the API endpoint
for the exists any user active entitlement operation typically these are written to a http.Request
*/
type ExistsAnyUserActiveEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*AppIds*/
	AppIds []string
	/*ItemIds*/
	ItemIds []string
	/*Platform*/
	Platform *string
	/*Skus*/
	Skus []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) WithTimeout(timeout time.Duration) *ExistsAnyUserActiveEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) WithContext(ctx context.Context) *ExistsAnyUserActiveEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) WithHTTPClient(client *http.Client) *ExistsAnyUserActiveEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) WithNamespace(namespace string) *ExistsAnyUserActiveEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) WithUserID(userID string) *ExistsAnyUserActiveEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAppIds adds the appIds to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) WithAppIds(appIds []string) *ExistsAnyUserActiveEntitlementParams {
	o.SetAppIds(appIds)
	return o
}

// SetAppIds adds the appIds to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetAppIds(appIds []string) {
	o.AppIds = appIds
}

// WithItemIds adds the itemIds to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) WithItemIds(itemIds []string) *ExistsAnyUserActiveEntitlementParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetItemIds(itemIds []string) {
	o.ItemIds = itemIds
}

// WithPlatform adds the platform to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) WithPlatform(platform *string) *ExistsAnyUserActiveEntitlementParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithSkus adds the skus to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) WithSkus(skus []string) *ExistsAnyUserActiveEntitlementParams {
	o.SetSkus(skus)
	return o
}

// SetSkus adds the skus to the exists any user active entitlement params
func (o *ExistsAnyUserActiveEntitlementParams) SetSkus(skus []string) {
	o.Skus = skus
}

// WriteToRequest writes these params to a swagger request
func (o *ExistsAnyUserActiveEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	valuesAppIds := o.AppIds

	joinedAppIds := swag.JoinByFormat(valuesAppIds, "multi")
	// query array param appIds
	if err := r.SetQueryParam("appIds", joinedAppIds...); err != nil {
		return err
	}

	valuesItemIds := o.ItemIds

	joinedItemIds := swag.JoinByFormat(valuesItemIds, "multi")
	// query array param itemIds
	if err := r.SetQueryParam("itemIds", joinedItemIds...); err != nil {
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

	valuesSkus := o.Skus

	joinedSkus := swag.JoinByFormat(valuesSkus, "multi")
	// query array param skus
	if err := r.SetQueryParam("skus", joinedSkus...); err != nil {
		return err
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
