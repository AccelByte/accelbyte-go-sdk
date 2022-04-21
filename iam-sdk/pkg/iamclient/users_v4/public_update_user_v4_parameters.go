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

// NewPublicUpdateUserV4Params creates a new PublicUpdateUserV4Params object
// with the default values initialized.
func NewPublicUpdateUserV4Params() *PublicUpdateUserV4Params {
	var ()
	return &PublicUpdateUserV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateUserV4ParamsWithTimeout creates a new PublicUpdateUserV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateUserV4ParamsWithTimeout(timeout time.Duration) *PublicUpdateUserV4Params {
	var ()
	return &PublicUpdateUserV4Params{

		timeout: timeout,
	}
}

// NewPublicUpdateUserV4ParamsWithContext creates a new PublicUpdateUserV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateUserV4ParamsWithContext(ctx context.Context) *PublicUpdateUserV4Params {
	var ()
	return &PublicUpdateUserV4Params{

		Context: ctx,
	}
}

// NewPublicUpdateUserV4ParamsWithHTTPClient creates a new PublicUpdateUserV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateUserV4ParamsWithHTTPClient(client *http.Client) *PublicUpdateUserV4Params {
	var ()
	return &PublicUpdateUserV4Params{
		HTTPClient: client,
	}
}

/*PublicUpdateUserV4Params contains all the parameters to send to the API endpoint
for the public update user v4 operation typically these are written to a http.Request
*/
type PublicUpdateUserV4Params struct {

	/*Body*/
	Body *iamclientmodels.ModelUserUpdateRequestV3
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the public update user v4 params
func (o *PublicUpdateUserV4Params) WithTimeout(timeout time.Duration) *PublicUpdateUserV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update user v4 params
func (o *PublicUpdateUserV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update user v4 params
func (o *PublicUpdateUserV4Params) WithContext(ctx context.Context) *PublicUpdateUserV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update user v4 params
func (o *PublicUpdateUserV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public update user v4 params
func (o *PublicUpdateUserV4Params) WithHTTPClient(client *http.Client) *PublicUpdateUserV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update user v4 params
func (o *PublicUpdateUserV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the public update user v4 params
func (o *PublicUpdateUserV4Params) WithBody(body *iamclientmodels.ModelUserUpdateRequestV3) *PublicUpdateUserV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update user v4 params
func (o *PublicUpdateUserV4Params) SetBody(body *iamclientmodels.ModelUserUpdateRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update user v4 params
func (o *PublicUpdateUserV4Params) WithNamespace(namespace string) *PublicUpdateUserV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update user v4 params
func (o *PublicUpdateUserV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateUserV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
