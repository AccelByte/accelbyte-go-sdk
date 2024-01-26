// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package misc

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewUpdateCountryGroupParams creates a new UpdateCountryGroupParams object
// with the default values initialized.
func NewUpdateCountryGroupParams() *UpdateCountryGroupParams {
	var ()
	return &UpdateCountryGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateCountryGroupParamsWithTimeout creates a new UpdateCountryGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateCountryGroupParamsWithTimeout(timeout time.Duration) *UpdateCountryGroupParams {
	var ()
	return &UpdateCountryGroupParams{

		timeout: timeout,
	}
}

// NewUpdateCountryGroupParamsWithContext creates a new UpdateCountryGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateCountryGroupParamsWithContext(ctx context.Context) *UpdateCountryGroupParams {
	var ()
	return &UpdateCountryGroupParams{

		Context: ctx,
	}
}

// NewUpdateCountryGroupParamsWithHTTPClient creates a new UpdateCountryGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateCountryGroupParamsWithHTTPClient(client *http.Client) *UpdateCountryGroupParams {
	var ()
	return &UpdateCountryGroupParams{
		HTTPClient: client,
	}
}

/*UpdateCountryGroupParams contains all the parameters to send to the API endpoint
for the update country group operation typically these are written to a http.Request
*/
type UpdateCountryGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UpdateCountryGroupRequest
	/*CountryGroupCode
	  groupCode, only accept alphabet and whitespace

	*/
	CountryGroupCode string
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update country group params
func (o *UpdateCountryGroupParams) WithTimeout(timeout time.Duration) *UpdateCountryGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update country group params
func (o *UpdateCountryGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update country group params
func (o *UpdateCountryGroupParams) WithContext(ctx context.Context) *UpdateCountryGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update country group params
func (o *UpdateCountryGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update country group params
func (o *UpdateCountryGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update country group params
func (o *UpdateCountryGroupParams) WithHTTPClient(client *http.Client) *UpdateCountryGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update country group params
func (o *UpdateCountryGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update country group params
func (o *UpdateCountryGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateCountryGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update country group params
func (o *UpdateCountryGroupParams) WithBody(body *basicclientmodels.UpdateCountryGroupRequest) *UpdateCountryGroupParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update country group params
func (o *UpdateCountryGroupParams) SetBody(body *basicclientmodels.UpdateCountryGroupRequest) {
	o.Body = body
}

// WithCountryGroupCode adds the countryGroupCode to the update country group params
func (o *UpdateCountryGroupParams) WithCountryGroupCode(countryGroupCode string) *UpdateCountryGroupParams {
	o.SetCountryGroupCode(countryGroupCode)
	return o
}

// SetCountryGroupCode adds the countryGroupCode to the update country group params
func (o *UpdateCountryGroupParams) SetCountryGroupCode(countryGroupCode string) {
	o.CountryGroupCode = countryGroupCode
}

// WithNamespace adds the namespace to the update country group params
func (o *UpdateCountryGroupParams) WithNamespace(namespace string) *UpdateCountryGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update country group params
func (o *UpdateCountryGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateCountryGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param countryGroupCode
	if err := r.SetPathParam("countryGroupCode", o.CountryGroupCode); err != nil {
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
