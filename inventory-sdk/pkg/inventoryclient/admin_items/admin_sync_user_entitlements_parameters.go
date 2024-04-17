// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_items

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

// NewAdminSyncUserEntitlementsParams creates a new AdminSyncUserEntitlementsParams object
// with the default values initialized.
func NewAdminSyncUserEntitlementsParams() *AdminSyncUserEntitlementsParams {
	var ()
	return &AdminSyncUserEntitlementsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSyncUserEntitlementsParamsWithTimeout creates a new AdminSyncUserEntitlementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSyncUserEntitlementsParamsWithTimeout(timeout time.Duration) *AdminSyncUserEntitlementsParams {
	var ()
	return &AdminSyncUserEntitlementsParams{

		timeout: timeout,
	}
}

// NewAdminSyncUserEntitlementsParamsWithContext creates a new AdminSyncUserEntitlementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSyncUserEntitlementsParamsWithContext(ctx context.Context) *AdminSyncUserEntitlementsParams {
	var ()
	return &AdminSyncUserEntitlementsParams{

		Context: ctx,
	}
}

// NewAdminSyncUserEntitlementsParamsWithHTTPClient creates a new AdminSyncUserEntitlementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSyncUserEntitlementsParamsWithHTTPClient(client *http.Client) *AdminSyncUserEntitlementsParams {
	var ()
	return &AdminSyncUserEntitlementsParams{
		HTTPClient: client,
	}
}

/*AdminSyncUserEntitlementsParams contains all the parameters to send to the API endpoint
for the admin sync user entitlements operation typically these are written to a http.Request
*/
type AdminSyncUserEntitlementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) WithTimeout(timeout time.Duration) *AdminSyncUserEntitlementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) WithContext(ctx context.Context) *AdminSyncUserEntitlementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) WithHTTPClient(client *http.Client) *AdminSyncUserEntitlementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSyncUserEntitlementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) WithNamespace(namespace string) *AdminSyncUserEntitlementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) WithUserID(userID string) *AdminSyncUserEntitlementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin sync user entitlements params
func (o *AdminSyncUserEntitlementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSyncUserEntitlementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
