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

// NewPublicExistsAnyUserActiveEntitlementParams creates a new PublicExistsAnyUserActiveEntitlementParams object
// with the default values initialized.
func NewPublicExistsAnyUserActiveEntitlementParams() *PublicExistsAnyUserActiveEntitlementParams {
	var ()
	return &PublicExistsAnyUserActiveEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicExistsAnyUserActiveEntitlementParamsWithTimeout creates a new PublicExistsAnyUserActiveEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicExistsAnyUserActiveEntitlementParamsWithTimeout(timeout time.Duration) *PublicExistsAnyUserActiveEntitlementParams {
	var ()
	return &PublicExistsAnyUserActiveEntitlementParams{

		timeout: timeout,
	}
}

// NewPublicExistsAnyUserActiveEntitlementParamsWithContext creates a new PublicExistsAnyUserActiveEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicExistsAnyUserActiveEntitlementParamsWithContext(ctx context.Context) *PublicExistsAnyUserActiveEntitlementParams {
	var ()
	return &PublicExistsAnyUserActiveEntitlementParams{

		Context: ctx,
	}
}

// NewPublicExistsAnyUserActiveEntitlementParamsWithHTTPClient creates a new PublicExistsAnyUserActiveEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicExistsAnyUserActiveEntitlementParamsWithHTTPClient(client *http.Client) *PublicExistsAnyUserActiveEntitlementParams {
	var ()
	return &PublicExistsAnyUserActiveEntitlementParams{
		HTTPClient: client,
	}
}

/*PublicExistsAnyUserActiveEntitlementParams contains all the parameters to send to the API endpoint
for the public exists any user active entitlement operation typically these are written to a http.Request
*/
type PublicExistsAnyUserActiveEntitlementParams struct {

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
	/*Skus*/
	Skus []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) WithTimeout(timeout time.Duration) *PublicExistsAnyUserActiveEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) WithContext(ctx context.Context) *PublicExistsAnyUserActiveEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) WithHTTPClient(client *http.Client) *PublicExistsAnyUserActiveEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) WithNamespace(namespace string) *PublicExistsAnyUserActiveEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) WithUserID(userID string) *PublicExistsAnyUserActiveEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAppIds adds the appIds to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) WithAppIds(appIds []string) *PublicExistsAnyUserActiveEntitlementParams {
	o.SetAppIds(appIds)
	return o
}

// SetAppIds adds the appIds to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetAppIds(appIds []string) {
	o.AppIds = appIds
}

// WithItemIds adds the itemIds to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) WithItemIds(itemIds []string) *PublicExistsAnyUserActiveEntitlementParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetItemIds(itemIds []string) {
	o.ItemIds = itemIds
}

// WithSkus adds the skus to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) WithSkus(skus []string) *PublicExistsAnyUserActiveEntitlementParams {
	o.SetSkus(skus)
	return o
}

// SetSkus adds the skus to the public exists any user active entitlement params
func (o *PublicExistsAnyUserActiveEntitlementParams) SetSkus(skus []string) {
	o.Skus = skus
}

// WriteToRequest writes these params to a swagger request
func (o *PublicExistsAnyUserActiveEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
