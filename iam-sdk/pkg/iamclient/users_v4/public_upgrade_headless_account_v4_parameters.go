// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users_v4

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicUpgradeHeadlessAccountV4Params creates a new PublicUpgradeHeadlessAccountV4Params object
// with the default values initialized.
func NewPublicUpgradeHeadlessAccountV4Params() *PublicUpgradeHeadlessAccountV4Params {
	var ()
	return &PublicUpgradeHeadlessAccountV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpgradeHeadlessAccountV4ParamsWithTimeout creates a new PublicUpgradeHeadlessAccountV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpgradeHeadlessAccountV4ParamsWithTimeout(timeout time.Duration) *PublicUpgradeHeadlessAccountV4Params {
	var ()
	return &PublicUpgradeHeadlessAccountV4Params{

		timeout: timeout,
	}
}

// NewPublicUpgradeHeadlessAccountV4ParamsWithContext creates a new PublicUpgradeHeadlessAccountV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpgradeHeadlessAccountV4ParamsWithContext(ctx context.Context) *PublicUpgradeHeadlessAccountV4Params {
	var ()
	return &PublicUpgradeHeadlessAccountV4Params{

		Context: ctx,
	}
}

// NewPublicUpgradeHeadlessAccountV4ParamsWithHTTPClient creates a new PublicUpgradeHeadlessAccountV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpgradeHeadlessAccountV4ParamsWithHTTPClient(client *http.Client) *PublicUpgradeHeadlessAccountV4Params {
	var ()
	return &PublicUpgradeHeadlessAccountV4Params{
		HTTPClient: client,
	}
}

/*PublicUpgradeHeadlessAccountV4Params contains all the parameters to send to the API endpoint
for the public upgrade headless account v4 operation typically these are written to a http.Request
*/
type PublicUpgradeHeadlessAccountV4Params struct {

	/*Body*/
	Body *iamclientmodels.AccountUpgradeHeadlessAccountRequestV4
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) WithTimeout(timeout time.Duration) *PublicUpgradeHeadlessAccountV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) WithContext(ctx context.Context) *PublicUpgradeHeadlessAccountV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) WithHTTPClient(client *http.Client) *PublicUpgradeHeadlessAccountV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) WithBody(body *iamclientmodels.AccountUpgradeHeadlessAccountRequestV4) *PublicUpgradeHeadlessAccountV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) SetBody(body *iamclientmodels.AccountUpgradeHeadlessAccountRequestV4) {
	o.Body = body
}

// WithNamespace adds the namespace to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) WithNamespace(namespace string) *PublicUpgradeHeadlessAccountV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public upgrade headless account v4 params
func (o *PublicUpgradeHeadlessAccountV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpgradeHeadlessAccountV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
