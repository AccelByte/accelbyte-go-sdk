// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package account

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// NewAdminAccountLinkParams creates a new AdminAccountLinkParams object
// with the default values initialized.
func NewAdminAccountLinkParams() *AdminAccountLinkParams {
	var ()
	return &AdminAccountLinkParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAccountLinkParamsWithTimeout creates a new AdminAccountLinkParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAccountLinkParamsWithTimeout(timeout time.Duration) *AdminAccountLinkParams {
	var ()
	return &AdminAccountLinkParams{

		timeout: timeout,
	}
}

// NewAdminAccountLinkParamsWithContext creates a new AdminAccountLinkParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAccountLinkParamsWithContext(ctx context.Context) *AdminAccountLinkParams {
	var ()
	return &AdminAccountLinkParams{

		Context: ctx,
	}
}

// NewAdminAccountLinkParamsWithHTTPClient creates a new AdminAccountLinkParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAccountLinkParamsWithHTTPClient(client *http.Client) *AdminAccountLinkParams {
	var ()
	return &AdminAccountLinkParams{
		HTTPClient: client,
	}
}

/*AdminAccountLinkParams contains all the parameters to send to the API endpoint
for the admin account link operation typically these are written to a http.Request
*/
type AdminAccountLinkParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIAccountLinkRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin account link params
func (o *AdminAccountLinkParams) WithTimeout(timeout time.Duration) *AdminAccountLinkParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin account link params
func (o *AdminAccountLinkParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin account link params
func (o *AdminAccountLinkParams) WithContext(ctx context.Context) *AdminAccountLinkParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin account link params
func (o *AdminAccountLinkParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin account link params
func (o *AdminAccountLinkParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin account link params
func (o *AdminAccountLinkParams) WithHTTPClient(client *http.Client) *AdminAccountLinkParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin account link params
func (o *AdminAccountLinkParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin account link params
func (o *AdminAccountLinkParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminAccountLinkParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin account link params
func (o *AdminAccountLinkParams) WithBody(body *amsclientmodels.APIAccountLinkRequest) *AdminAccountLinkParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin account link params
func (o *AdminAccountLinkParams) SetBody(body *amsclientmodels.APIAccountLinkRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin account link params
func (o *AdminAccountLinkParams) WithNamespace(namespace string) *AdminAccountLinkParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin account link params
func (o *AdminAccountLinkParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAccountLinkParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
