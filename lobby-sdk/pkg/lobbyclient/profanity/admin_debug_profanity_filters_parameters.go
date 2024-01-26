// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profanity

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewAdminDebugProfanityFiltersParams creates a new AdminDebugProfanityFiltersParams object
// with the default values initialized.
func NewAdminDebugProfanityFiltersParams() *AdminDebugProfanityFiltersParams {
	var ()
	return &AdminDebugProfanityFiltersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDebugProfanityFiltersParamsWithTimeout creates a new AdminDebugProfanityFiltersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDebugProfanityFiltersParamsWithTimeout(timeout time.Duration) *AdminDebugProfanityFiltersParams {
	var ()
	return &AdminDebugProfanityFiltersParams{

		timeout: timeout,
	}
}

// NewAdminDebugProfanityFiltersParamsWithContext creates a new AdminDebugProfanityFiltersParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDebugProfanityFiltersParamsWithContext(ctx context.Context) *AdminDebugProfanityFiltersParams {
	var ()
	return &AdminDebugProfanityFiltersParams{

		Context: ctx,
	}
}

// NewAdminDebugProfanityFiltersParamsWithHTTPClient creates a new AdminDebugProfanityFiltersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDebugProfanityFiltersParamsWithHTTPClient(client *http.Client) *AdminDebugProfanityFiltersParams {
	var ()
	return &AdminDebugProfanityFiltersParams{
		HTTPClient: client,
	}
}

/*AdminDebugProfanityFiltersParams contains all the parameters to send to the API endpoint
for the admin debug profanity filters operation typically these are written to a http.Request
*/
type AdminDebugProfanityFiltersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsDebugProfanityFilterRequest
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

// WithTimeout adds the timeout to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) WithTimeout(timeout time.Duration) *AdminDebugProfanityFiltersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) WithContext(ctx context.Context) *AdminDebugProfanityFiltersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) WithHTTPClient(client *http.Client) *AdminDebugProfanityFiltersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDebugProfanityFiltersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) WithBody(body *lobbyclientmodels.ModelsDebugProfanityFilterRequest) *AdminDebugProfanityFiltersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) SetBody(body *lobbyclientmodels.ModelsDebugProfanityFilterRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) WithNamespace(namespace string) *AdminDebugProfanityFiltersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin debug profanity filters params
func (o *AdminDebugProfanityFiltersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDebugProfanityFiltersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
