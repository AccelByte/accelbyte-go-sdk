// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

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

// NewAdminDeleteClientV3Params creates a new AdminDeleteClientV3Params object
// with the default values initialized.
func NewAdminDeleteClientV3Params() *AdminDeleteClientV3Params {
	var ()
	return &AdminDeleteClientV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteClientV3ParamsWithTimeout creates a new AdminDeleteClientV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteClientV3ParamsWithTimeout(timeout time.Duration) *AdminDeleteClientV3Params {
	var ()
	return &AdminDeleteClientV3Params{

		timeout: timeout,
	}
}

// NewAdminDeleteClientV3ParamsWithContext creates a new AdminDeleteClientV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteClientV3ParamsWithContext(ctx context.Context) *AdminDeleteClientV3Params {
	var ()
	return &AdminDeleteClientV3Params{

		Context: ctx,
	}
}

// NewAdminDeleteClientV3ParamsWithHTTPClient creates a new AdminDeleteClientV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteClientV3ParamsWithHTTPClient(client *http.Client) *AdminDeleteClientV3Params {
	var ()
	return &AdminDeleteClientV3Params{
		HTTPClient: client,
	}
}

/*AdminDeleteClientV3Params contains all the parameters to send to the API endpoint
for the admin delete client v3 operation typically these are written to a http.Request
*/
type AdminDeleteClientV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ClientID
	  Client ID, should follow UUID version 4 without hyphen

	*/
	ClientID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) WithTimeout(timeout time.Duration) *AdminDeleteClientV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) WithContext(ctx context.Context) *AdminDeleteClientV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) WithHTTPClient(client *http.Client) *AdminDeleteClientV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteClientV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithClientID adds the clientID to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) WithClientID(clientID string) *AdminDeleteClientV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithNamespace adds the namespace to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) WithNamespace(namespace string) *AdminDeleteClientV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete client v3 params
func (o *AdminDeleteClientV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteClientV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param clientId
	if err := r.SetPathParam("clientId", o.ClientID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
