// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party

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

// NewAdminDeleteThirdPartyConfigParams creates a new AdminDeleteThirdPartyConfigParams object
// with the default values initialized.
func NewAdminDeleteThirdPartyConfigParams() *AdminDeleteThirdPartyConfigParams {
	var ()
	return &AdminDeleteThirdPartyConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteThirdPartyConfigParamsWithTimeout creates a new AdminDeleteThirdPartyConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteThirdPartyConfigParamsWithTimeout(timeout time.Duration) *AdminDeleteThirdPartyConfigParams {
	var ()
	return &AdminDeleteThirdPartyConfigParams{

		timeout: timeout,
	}
}

// NewAdminDeleteThirdPartyConfigParamsWithContext creates a new AdminDeleteThirdPartyConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteThirdPartyConfigParamsWithContext(ctx context.Context) *AdminDeleteThirdPartyConfigParams {
	var ()
	return &AdminDeleteThirdPartyConfigParams{

		Context: ctx,
	}
}

// NewAdminDeleteThirdPartyConfigParamsWithHTTPClient creates a new AdminDeleteThirdPartyConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteThirdPartyConfigParamsWithHTTPClient(client *http.Client) *AdminDeleteThirdPartyConfigParams {
	var ()
	return &AdminDeleteThirdPartyConfigParams{
		HTTPClient: client,
	}
}

/*AdminDeleteThirdPartyConfigParams contains all the parameters to send to the API endpoint
for the admin delete third party config operation typically these are written to a http.Request
*/
type AdminDeleteThirdPartyConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) WithTimeout(timeout time.Duration) *AdminDeleteThirdPartyConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) WithContext(ctx context.Context) *AdminDeleteThirdPartyConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) WithHTTPClient(client *http.Client) *AdminDeleteThirdPartyConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteThirdPartyConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) WithNamespace(namespace string) *AdminDeleteThirdPartyConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete third party config params
func (o *AdminDeleteThirdPartyConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteThirdPartyConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
