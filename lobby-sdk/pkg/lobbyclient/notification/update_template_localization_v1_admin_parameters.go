// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

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

// NewUpdateTemplateLocalizationV1AdminParams creates a new UpdateTemplateLocalizationV1AdminParams object
// with the default values initialized.
func NewUpdateTemplateLocalizationV1AdminParams() *UpdateTemplateLocalizationV1AdminParams {
	var ()
	return &UpdateTemplateLocalizationV1AdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateTemplateLocalizationV1AdminParamsWithTimeout creates a new UpdateTemplateLocalizationV1AdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateTemplateLocalizationV1AdminParamsWithTimeout(timeout time.Duration) *UpdateTemplateLocalizationV1AdminParams {
	var ()
	return &UpdateTemplateLocalizationV1AdminParams{

		timeout: timeout,
	}
}

// NewUpdateTemplateLocalizationV1AdminParamsWithContext creates a new UpdateTemplateLocalizationV1AdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateTemplateLocalizationV1AdminParamsWithContext(ctx context.Context) *UpdateTemplateLocalizationV1AdminParams {
	var ()
	return &UpdateTemplateLocalizationV1AdminParams{

		Context: ctx,
	}
}

// NewUpdateTemplateLocalizationV1AdminParamsWithHTTPClient creates a new UpdateTemplateLocalizationV1AdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateTemplateLocalizationV1AdminParamsWithHTTPClient(client *http.Client) *UpdateTemplateLocalizationV1AdminParams {
	var ()
	return &UpdateTemplateLocalizationV1AdminParams{
		HTTPClient: client,
	}
}

/*UpdateTemplateLocalizationV1AdminParams contains all the parameters to send to the API endpoint
for the update template localization v1 admin operation typically these are written to a http.Request
*/
type UpdateTemplateLocalizationV1AdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelUpdateTemplateRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*TemplateLanguage
	  template language, follows IETF BCP 47 standard

	*/
	TemplateLanguage string
	/*TemplateSlug
	  Template Identifier, only alphabet characters and hyphens are permitted

	*/
	TemplateSlug string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) WithTimeout(timeout time.Duration) *UpdateTemplateLocalizationV1AdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) WithContext(ctx context.Context) *UpdateTemplateLocalizationV1AdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) WithHTTPClient(client *http.Client) *UpdateTemplateLocalizationV1AdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) WithBody(body *lobbyclientmodels.ModelUpdateTemplateRequest) *UpdateTemplateLocalizationV1AdminParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) SetBody(body *lobbyclientmodels.ModelUpdateTemplateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) WithNamespace(namespace string) *UpdateTemplateLocalizationV1AdminParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTemplateLanguage adds the templateLanguage to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) WithTemplateLanguage(templateLanguage string) *UpdateTemplateLocalizationV1AdminParams {
	o.SetTemplateLanguage(templateLanguage)
	return o
}

// SetTemplateLanguage adds the templateLanguage to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) SetTemplateLanguage(templateLanguage string) {
	o.TemplateLanguage = templateLanguage
}

// WithTemplateSlug adds the templateSlug to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) WithTemplateSlug(templateSlug string) *UpdateTemplateLocalizationV1AdminParams {
	o.SetTemplateSlug(templateSlug)
	return o
}

// SetTemplateSlug adds the templateSlug to the update template localization v1 admin params
func (o *UpdateTemplateLocalizationV1AdminParams) SetTemplateSlug(templateSlug string) {
	o.TemplateSlug = templateSlug
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateTemplateLocalizationV1AdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
