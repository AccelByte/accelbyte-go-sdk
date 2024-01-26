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

// NewAdminAccountLinkTokenPostParams creates a new AdminAccountLinkTokenPostParams object
// with the default values initialized.
func NewAdminAccountLinkTokenPostParams() *AdminAccountLinkTokenPostParams {
	var ()
	return &AdminAccountLinkTokenPostParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAccountLinkTokenPostParamsWithTimeout creates a new AdminAccountLinkTokenPostParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAccountLinkTokenPostParamsWithTimeout(timeout time.Duration) *AdminAccountLinkTokenPostParams {
	var ()
	return &AdminAccountLinkTokenPostParams{

		timeout: timeout,
	}
}

// NewAdminAccountLinkTokenPostParamsWithContext creates a new AdminAccountLinkTokenPostParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAccountLinkTokenPostParamsWithContext(ctx context.Context) *AdminAccountLinkTokenPostParams {
	var ()
	return &AdminAccountLinkTokenPostParams{

		Context: ctx,
	}
}

// NewAdminAccountLinkTokenPostParamsWithHTTPClient creates a new AdminAccountLinkTokenPostParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAccountLinkTokenPostParamsWithHTTPClient(client *http.Client) *AdminAccountLinkTokenPostParams {
	var ()
	return &AdminAccountLinkTokenPostParams{
		HTTPClient: client,
	}
}

/*AdminAccountLinkTokenPostParams contains all the parameters to send to the API endpoint
for the admin account link token post operation typically these are written to a http.Request
*/
type AdminAccountLinkTokenPostParams struct {

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

// WithTimeout adds the timeout to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) WithTimeout(timeout time.Duration) *AdminAccountLinkTokenPostParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) WithContext(ctx context.Context) *AdminAccountLinkTokenPostParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) WithHTTPClient(client *http.Client) *AdminAccountLinkTokenPostParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminAccountLinkTokenPostParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) WithBody(body *amsclientmodels.APIAccountLinkRequest) *AdminAccountLinkTokenPostParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) SetBody(body *amsclientmodels.APIAccountLinkRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) WithNamespace(namespace string) *AdminAccountLinkTokenPostParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin account link token post params
func (o *AdminAccountLinkTokenPostParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAccountLinkTokenPostParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
