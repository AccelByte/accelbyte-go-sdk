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

// NewGetUserActiveEntitlementsByItemIdsParams creates a new GetUserActiveEntitlementsByItemIdsParams object
// with the default values initialized.
func NewGetUserActiveEntitlementsByItemIdsParams() *GetUserActiveEntitlementsByItemIdsParams {
	var ()
	return &GetUserActiveEntitlementsByItemIdsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserActiveEntitlementsByItemIdsParamsWithTimeout creates a new GetUserActiveEntitlementsByItemIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserActiveEntitlementsByItemIdsParamsWithTimeout(timeout time.Duration) *GetUserActiveEntitlementsByItemIdsParams {
	var ()
	return &GetUserActiveEntitlementsByItemIdsParams{

		timeout: timeout,
	}
}

// NewGetUserActiveEntitlementsByItemIdsParamsWithContext creates a new GetUserActiveEntitlementsByItemIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserActiveEntitlementsByItemIdsParamsWithContext(ctx context.Context) *GetUserActiveEntitlementsByItemIdsParams {
	var ()
	return &GetUserActiveEntitlementsByItemIdsParams{

		Context: ctx,
	}
}

// NewGetUserActiveEntitlementsByItemIdsParamsWithHTTPClient creates a new GetUserActiveEntitlementsByItemIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserActiveEntitlementsByItemIdsParamsWithHTTPClient(client *http.Client) *GetUserActiveEntitlementsByItemIdsParams {
	var ()
	return &GetUserActiveEntitlementsByItemIdsParams{
		HTTPClient: client,
	}
}

/*GetUserActiveEntitlementsByItemIdsParams contains all the parameters to send to the API endpoint
for the get user active entitlements by item ids operation typically these are written to a http.Request
*/
type GetUserActiveEntitlementsByItemIdsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*Ids*/
	Ids []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) WithTimeout(timeout time.Duration) *GetUserActiveEntitlementsByItemIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) WithContext(ctx context.Context) *GetUserActiveEntitlementsByItemIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) WithHTTPClient(client *http.Client) *GetUserActiveEntitlementsByItemIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) WithNamespace(namespace string) *GetUserActiveEntitlementsByItemIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) WithUserID(userID string) *GetUserActiveEntitlementsByItemIdsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithIds adds the ids to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) WithIds(ids []string) *GetUserActiveEntitlementsByItemIdsParams {
	o.SetIds(ids)
	return o
}

// SetIds adds the ids to the get user active entitlements by item ids params
func (o *GetUserActiveEntitlementsByItemIdsParams) SetIds(ids []string) {
	o.Ids = ids
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserActiveEntitlementsByItemIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	valuesIds := o.Ids

	joinedIds := swag.JoinByFormat(valuesIds, "csv")
	// query array param ids
	if err := r.SetQueryParam("ids", joinedIds...); err != nil {
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
