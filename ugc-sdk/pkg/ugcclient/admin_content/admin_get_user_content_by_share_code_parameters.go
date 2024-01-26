// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// NewAdminGetUserContentByShareCodeParams creates a new AdminGetUserContentByShareCodeParams object
// with the default values initialized.
func NewAdminGetUserContentByShareCodeParams() *AdminGetUserContentByShareCodeParams {
	var ()
	return &AdminGetUserContentByShareCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserContentByShareCodeParamsWithTimeout creates a new AdminGetUserContentByShareCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserContentByShareCodeParamsWithTimeout(timeout time.Duration) *AdminGetUserContentByShareCodeParams {
	var ()
	return &AdminGetUserContentByShareCodeParams{

		timeout: timeout,
	}
}

// NewAdminGetUserContentByShareCodeParamsWithContext creates a new AdminGetUserContentByShareCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserContentByShareCodeParamsWithContext(ctx context.Context) *AdminGetUserContentByShareCodeParams {
	var ()
	return &AdminGetUserContentByShareCodeParams{

		Context: ctx,
	}
}

// NewAdminGetUserContentByShareCodeParamsWithHTTPClient creates a new AdminGetUserContentByShareCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserContentByShareCodeParamsWithHTTPClient(client *http.Client) *AdminGetUserContentByShareCodeParams {
	var ()
	return &AdminGetUserContentByShareCodeParams{
		HTTPClient: client,
	}
}

/*AdminGetUserContentByShareCodeParams contains all the parameters to send to the API endpoint
for the admin get user content by share code operation typically these are written to a http.Request
*/
type AdminGetUserContentByShareCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ShareCode
	  content sharecode

	*/
	ShareCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) WithTimeout(timeout time.Duration) *AdminGetUserContentByShareCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) WithContext(ctx context.Context) *AdminGetUserContentByShareCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) WithHTTPClient(client *http.Client) *AdminGetUserContentByShareCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserContentByShareCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) WithNamespace(namespace string) *AdminGetUserContentByShareCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) WithShareCode(shareCode string) *AdminGetUserContentByShareCodeParams {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the admin get user content by share code params
func (o *AdminGetUserContentByShareCodeParams) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserContentByShareCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param shareCode
	if err := r.SetPathParam("shareCode", o.ShareCode); err != nil {
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
