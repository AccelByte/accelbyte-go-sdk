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
)

// NewGetUserEntitlementHistoriesParams creates a new GetUserEntitlementHistoriesParams object
// with the default values initialized.
func NewGetUserEntitlementHistoriesParams() *GetUserEntitlementHistoriesParams {
	var ()
	return &GetUserEntitlementHistoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserEntitlementHistoriesParamsWithTimeout creates a new GetUserEntitlementHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserEntitlementHistoriesParamsWithTimeout(timeout time.Duration) *GetUserEntitlementHistoriesParams {
	var ()
	return &GetUserEntitlementHistoriesParams{

		timeout: timeout,
	}
}

// NewGetUserEntitlementHistoriesParamsWithContext creates a new GetUserEntitlementHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserEntitlementHistoriesParamsWithContext(ctx context.Context) *GetUserEntitlementHistoriesParams {
	var ()
	return &GetUserEntitlementHistoriesParams{

		Context: ctx,
	}
}

// NewGetUserEntitlementHistoriesParamsWithHTTPClient creates a new GetUserEntitlementHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserEntitlementHistoriesParamsWithHTTPClient(client *http.Client) *GetUserEntitlementHistoriesParams {
	var ()
	return &GetUserEntitlementHistoriesParams{
		HTTPClient: client,
	}
}

/*GetUserEntitlementHistoriesParams contains all the parameters to send to the API endpoint
for the get user entitlement histories operation typically these are written to a http.Request
*/
type GetUserEntitlementHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EntitlementID*/
	EntitlementID string
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) WithTimeout(timeout time.Duration) *GetUserEntitlementHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) WithContext(ctx context.Context) *GetUserEntitlementHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) WithHTTPClient(client *http.Client) *GetUserEntitlementHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserEntitlementHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEntitlementID adds the entitlementID to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) WithEntitlementID(entitlementID string) *GetUserEntitlementHistoriesParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) WithNamespace(namespace string) *GetUserEntitlementHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) WithUserID(userID string) *GetUserEntitlementHistoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user entitlement histories params
func (o *GetUserEntitlementHistoriesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserEntitlementHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param entitlementId
	if err := r.SetPathParam("entitlementId", o.EntitlementID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
