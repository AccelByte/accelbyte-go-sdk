// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure_client

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// NewAdminMockPlatformAccountClosureDataParams creates a new AdminMockPlatformAccountClosureDataParams object
// with the default values initialized.
func NewAdminMockPlatformAccountClosureDataParams() *AdminMockPlatformAccountClosureDataParams {
	var ()
	return &AdminMockPlatformAccountClosureDataParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminMockPlatformAccountClosureDataParamsWithTimeout creates a new AdminMockPlatformAccountClosureDataParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminMockPlatformAccountClosureDataParamsWithTimeout(timeout time.Duration) *AdminMockPlatformAccountClosureDataParams {
	var ()
	return &AdminMockPlatformAccountClosureDataParams{

		timeout: timeout,
	}
}

// NewAdminMockPlatformAccountClosureDataParamsWithContext creates a new AdminMockPlatformAccountClosureDataParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminMockPlatformAccountClosureDataParamsWithContext(ctx context.Context) *AdminMockPlatformAccountClosureDataParams {
	var ()
	return &AdminMockPlatformAccountClosureDataParams{

		Context: ctx,
	}
}

// NewAdminMockPlatformAccountClosureDataParamsWithHTTPClient creates a new AdminMockPlatformAccountClosureDataParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminMockPlatformAccountClosureDataParamsWithHTTPClient(client *http.Client) *AdminMockPlatformAccountClosureDataParams {
	var ()
	return &AdminMockPlatformAccountClosureDataParams{
		HTTPClient: client,
	}
}

/*AdminMockPlatformAccountClosureDataParams contains all the parameters to send to the API endpoint
for the admin mock platform account closure data operation typically these are written to a http.Request
*/
type AdminMockPlatformAccountClosureDataParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *gdprclientmodels.DTOPlatformAccountClosureMockRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Platform
	  3rd party platform

	*/
	Platform string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) WithTimeout(timeout time.Duration) *AdminMockPlatformAccountClosureDataParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) WithContext(ctx context.Context) *AdminMockPlatformAccountClosureDataParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) WithHTTPClient(client *http.Client) *AdminMockPlatformAccountClosureDataParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminMockPlatformAccountClosureDataParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) WithBody(body *gdprclientmodels.DTOPlatformAccountClosureMockRequest) *AdminMockPlatformAccountClosureDataParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) SetBody(body *gdprclientmodels.DTOPlatformAccountClosureMockRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) WithNamespace(namespace string) *AdminMockPlatformAccountClosureDataParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) WithPlatform(platform string) *AdminMockPlatformAccountClosureDataParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the admin mock platform account closure data params
func (o *AdminMockPlatformAccountClosureDataParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *AdminMockPlatformAccountClosureDataParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param platform
	if err := r.SetPathParam("platform", o.Platform); err != nil {
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
