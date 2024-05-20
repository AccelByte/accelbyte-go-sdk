// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// NewAdminUpdatePlatformAccountClosureServicesConfigurationParams creates a new AdminUpdatePlatformAccountClosureServicesConfigurationParams object
// with the default values initialized.
func NewAdminUpdatePlatformAccountClosureServicesConfigurationParams() *AdminUpdatePlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminUpdatePlatformAccountClosureServicesConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdatePlatformAccountClosureServicesConfigurationParamsWithTimeout creates a new AdminUpdatePlatformAccountClosureServicesConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdatePlatformAccountClosureServicesConfigurationParamsWithTimeout(timeout time.Duration) *AdminUpdatePlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminUpdatePlatformAccountClosureServicesConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminUpdatePlatformAccountClosureServicesConfigurationParamsWithContext creates a new AdminUpdatePlatformAccountClosureServicesConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdatePlatformAccountClosureServicesConfigurationParamsWithContext(ctx context.Context) *AdminUpdatePlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminUpdatePlatformAccountClosureServicesConfigurationParams{

		Context: ctx,
	}
}

// NewAdminUpdatePlatformAccountClosureServicesConfigurationParamsWithHTTPClient creates a new AdminUpdatePlatformAccountClosureServicesConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdatePlatformAccountClosureServicesConfigurationParamsWithHTTPClient(client *http.Client) *AdminUpdatePlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminUpdatePlatformAccountClosureServicesConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminUpdatePlatformAccountClosureServicesConfigurationParams contains all the parameters to send to the API endpoint
for the admin update platform account closure services configuration operation typically these are written to a http.Request
*/
type AdminUpdatePlatformAccountClosureServicesConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *gdprclientmodels.DTOServiceConfigurationUpdateRequest
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

// WithTimeout adds the timeout to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) WithTimeout(timeout time.Duration) *AdminUpdatePlatformAccountClosureServicesConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) WithContext(ctx context.Context) *AdminUpdatePlatformAccountClosureServicesConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) WithHTTPClient(client *http.Client) *AdminUpdatePlatformAccountClosureServicesConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) WithBody(body *gdprclientmodels.DTOServiceConfigurationUpdateRequest) *AdminUpdatePlatformAccountClosureServicesConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) SetBody(body *gdprclientmodels.DTOServiceConfigurationUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) WithNamespace(namespace string) *AdminUpdatePlatformAccountClosureServicesConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update platform account closure services configuration params
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
