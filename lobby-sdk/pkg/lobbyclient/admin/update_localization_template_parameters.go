// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// NewUpdateLocalizationTemplateParams creates a new UpdateLocalizationTemplateParams object
// with the default values initialized.
func NewUpdateLocalizationTemplateParams() *UpdateLocalizationTemplateParams {
	var ()
	return &UpdateLocalizationTemplateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateLocalizationTemplateParamsWithTimeout creates a new UpdateLocalizationTemplateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateLocalizationTemplateParamsWithTimeout(timeout time.Duration) *UpdateLocalizationTemplateParams {
	var ()
	return &UpdateLocalizationTemplateParams{

		timeout: timeout,
	}
}

// NewUpdateLocalizationTemplateParamsWithContext creates a new UpdateLocalizationTemplateParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateLocalizationTemplateParamsWithContext(ctx context.Context) *UpdateLocalizationTemplateParams {
	var ()
	return &UpdateLocalizationTemplateParams{

		Context: ctx,
	}
}

// NewUpdateLocalizationTemplateParamsWithHTTPClient creates a new UpdateLocalizationTemplateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateLocalizationTemplateParamsWithHTTPClient(client *http.Client) *UpdateLocalizationTemplateParams {
	var ()
	return &UpdateLocalizationTemplateParams{
		HTTPClient: client,
	}
}

/*UpdateLocalizationTemplateParams contains all the parameters to send to the API endpoint
for the update localization template operation typically these are written to a http.Request
*/
type UpdateLocalizationTemplateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelUpdateTemplateRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*TemplateLanguage
	  template language

	*/
	TemplateLanguage string
	/*TemplateSlug
	  template slug

	*/
	TemplateSlug string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update localization template params
func (o *UpdateLocalizationTemplateParams) WithTimeout(timeout time.Duration) *UpdateLocalizationTemplateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update localization template params
func (o *UpdateLocalizationTemplateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update localization template params
func (o *UpdateLocalizationTemplateParams) WithContext(ctx context.Context) *UpdateLocalizationTemplateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update localization template params
func (o *UpdateLocalizationTemplateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update localization template params
func (o *UpdateLocalizationTemplateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update localization template params
func (o *UpdateLocalizationTemplateParams) WithHTTPClient(client *http.Client) *UpdateLocalizationTemplateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update localization template params
func (o *UpdateLocalizationTemplateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update localization template params
func (o *UpdateLocalizationTemplateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateLocalizationTemplateParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update localization template params
func (o *UpdateLocalizationTemplateParams) WithBody(body *lobbyclientmodels.ModelUpdateTemplateRequest) *UpdateLocalizationTemplateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update localization template params
func (o *UpdateLocalizationTemplateParams) SetBody(body *lobbyclientmodels.ModelUpdateTemplateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update localization template params
func (o *UpdateLocalizationTemplateParams) WithNamespace(namespace string) *UpdateLocalizationTemplateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update localization template params
func (o *UpdateLocalizationTemplateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTemplateLanguage adds the templateLanguage to the update localization template params
func (o *UpdateLocalizationTemplateParams) WithTemplateLanguage(templateLanguage string) *UpdateLocalizationTemplateParams {
	o.SetTemplateLanguage(templateLanguage)
	return o
}

// SetTemplateLanguage adds the templateLanguage to the update localization template params
func (o *UpdateLocalizationTemplateParams) SetTemplateLanguage(templateLanguage string) {
	o.TemplateLanguage = templateLanguage
}

// WithTemplateSlug adds the templateSlug to the update localization template params
func (o *UpdateLocalizationTemplateParams) WithTemplateSlug(templateSlug string) *UpdateLocalizationTemplateParams {
	o.SetTemplateSlug(templateSlug)
	return o
}

// SetTemplateSlug adds the templateSlug to the update localization template params
func (o *UpdateLocalizationTemplateParams) SetTemplateSlug(templateSlug string) {
	o.TemplateSlug = templateSlug
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateLocalizationTemplateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param templateLanguage
	if err := r.SetPathParam("templateLanguage", o.TemplateLanguage); err != nil {
		return err
	}

	// path param templateSlug
	if err := r.SetPathParam("templateSlug", o.TemplateSlug); err != nil {
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
