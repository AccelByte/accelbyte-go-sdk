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

// NewGetUserEntitlementsByIdsParams creates a new GetUserEntitlementsByIdsParams object
// with the default values initialized.
func NewGetUserEntitlementsByIdsParams() *GetUserEntitlementsByIdsParams {
	var ()
	return &GetUserEntitlementsByIdsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserEntitlementsByIdsParamsWithTimeout creates a new GetUserEntitlementsByIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserEntitlementsByIdsParamsWithTimeout(timeout time.Duration) *GetUserEntitlementsByIdsParams {
	var ()
	return &GetUserEntitlementsByIdsParams{

		timeout: timeout,
	}
}

// NewGetUserEntitlementsByIdsParamsWithContext creates a new GetUserEntitlementsByIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserEntitlementsByIdsParamsWithContext(ctx context.Context) *GetUserEntitlementsByIdsParams {
	var ()
	return &GetUserEntitlementsByIdsParams{

		Context: ctx,
	}
}

// NewGetUserEntitlementsByIdsParamsWithHTTPClient creates a new GetUserEntitlementsByIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserEntitlementsByIdsParamsWithHTTPClient(client *http.Client) *GetUserEntitlementsByIdsParams {
	var ()
	return &GetUserEntitlementsByIdsParams{
		HTTPClient: client,
	}
}

/*GetUserEntitlementsByIdsParams contains all the parameters to send to the API endpoint
for the get user entitlements by ids operation typically these are written to a http.Request
*/
type GetUserEntitlementsByIdsParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) WithTimeout(timeout time.Duration) *GetUserEntitlementsByIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) WithContext(ctx context.Context) *GetUserEntitlementsByIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) WithHTTPClient(client *http.Client) *GetUserEntitlementsByIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserEntitlementsByIdsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) WithNamespace(namespace string) *GetUserEntitlementsByIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) WithUserID(userID string) *GetUserEntitlementsByIdsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithIds adds the ids to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) WithIds(ids []string) *GetUserEntitlementsByIdsParams {
	o.SetIds(ids)
	return o
}

// SetIds adds the ids to the get user entitlements by ids params
func (o *GetUserEntitlementsByIdsParams) SetIds(ids []string) {
	o.Ids = ids
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserEntitlementsByIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	joinedIds := swag.JoinByFormat(valuesIds, "multi")
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
