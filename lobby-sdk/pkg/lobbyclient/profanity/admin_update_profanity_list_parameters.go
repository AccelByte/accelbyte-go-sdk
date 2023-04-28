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

// NewAdminUpdateProfanityListParams creates a new AdminUpdateProfanityListParams object
// with the default values initialized.
func NewAdminUpdateProfanityListParams() *AdminUpdateProfanityListParams {
	var ()
	return &AdminUpdateProfanityListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateProfanityListParamsWithTimeout creates a new AdminUpdateProfanityListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateProfanityListParamsWithTimeout(timeout time.Duration) *AdminUpdateProfanityListParams {
	var ()
	return &AdminUpdateProfanityListParams{

		timeout: timeout,
	}
}

// NewAdminUpdateProfanityListParamsWithContext creates a new AdminUpdateProfanityListParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateProfanityListParamsWithContext(ctx context.Context) *AdminUpdateProfanityListParams {
	var ()
	return &AdminUpdateProfanityListParams{

		Context: ctx,
	}
}

// NewAdminUpdateProfanityListParamsWithHTTPClient creates a new AdminUpdateProfanityListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateProfanityListParamsWithHTTPClient(client *http.Client) *AdminUpdateProfanityListParams {
	var ()
	return &AdminUpdateProfanityListParams{
		HTTPClient: client,
	}
}

/*AdminUpdateProfanityListParams contains all the parameters to send to the API endpoint
for the admin update profanity list operation typically these are written to a http.Request
*/
type AdminUpdateProfanityListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsAdminUpdateProfanityList
	/*List
	  list

	*/
	List string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) WithTimeout(timeout time.Duration) *AdminUpdateProfanityListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) WithContext(ctx context.Context) *AdminUpdateProfanityListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) WithHTTPClient(client *http.Client) *AdminUpdateProfanityListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) WithBody(body *lobbyclientmodels.ModelsAdminUpdateProfanityList) *AdminUpdateProfanityListParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) SetBody(body *lobbyclientmodels.ModelsAdminUpdateProfanityList) {
	o.Body = body
}

// WithList adds the listVar to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) WithList(listVar string) *AdminUpdateProfanityListParams {
	o.SetList(listVar)
	return o
}

// SetList adds the list to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) SetList(listVar string) {
	o.List = listVar
}

// WithNamespace adds the namespace to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) WithNamespace(namespace string) *AdminUpdateProfanityListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update profanity list params
func (o *AdminUpdateProfanityListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateProfanityListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param list
	if err := r.SetPathParam("list", o.List); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
