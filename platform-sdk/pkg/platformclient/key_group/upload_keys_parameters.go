// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package key_group

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewUploadKeysParams creates a new UploadKeysParams object
// with the default values initialized.
func NewUploadKeysParams() *UploadKeysParams {
	var ()
	return &UploadKeysParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUploadKeysParamsWithTimeout creates a new UploadKeysParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUploadKeysParamsWithTimeout(timeout time.Duration) *UploadKeysParams {
	var ()
	return &UploadKeysParams{

		timeout: timeout,
	}
}

// NewUploadKeysParamsWithContext creates a new UploadKeysParams object
// with the default values initialized, and the ability to set a context for a request
func NewUploadKeysParamsWithContext(ctx context.Context) *UploadKeysParams {
	var ()
	return &UploadKeysParams{

		Context: ctx,
	}
}

// NewUploadKeysParamsWithHTTPClient creates a new UploadKeysParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUploadKeysParamsWithHTTPClient(client *http.Client) *UploadKeysParams {
	var ()
	return &UploadKeysParams{
		HTTPClient: client,
	}
}

/*UploadKeysParams contains all the parameters to send to the API endpoint
for the upload keys operation typically these are written to a http.Request
*/
type UploadKeysParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File*/
	File runtime.NamedReadCloser
	/*KeyGroupID*/
	KeyGroupID string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the upload keys params
func (o *UploadKeysParams) WithTimeout(timeout time.Duration) *UploadKeysParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the upload keys params
func (o *UploadKeysParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the upload keys params
func (o *UploadKeysParams) WithContext(ctx context.Context) *UploadKeysParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the upload keys params
func (o *UploadKeysParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the upload keys params
func (o *UploadKeysParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the upload keys params
func (o *UploadKeysParams) WithHTTPClient(client *http.Client) *UploadKeysParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the upload keys params
func (o *UploadKeysParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the upload keys params
func (o *UploadKeysParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFile adds the file to the upload keys params
func (o *UploadKeysParams) WithFile(file runtime.NamedReadCloser) *UploadKeysParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the upload keys params
func (o *UploadKeysParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithKeyGroupID adds the keyGroupID to the upload keys params
func (o *UploadKeysParams) WithKeyGroupID(keyGroupID string) *UploadKeysParams {
	o.SetKeyGroupID(keyGroupID)
	return o
}

// SetKeyGroupID adds the keyGroupId to the upload keys params
func (o *UploadKeysParams) SetKeyGroupID(keyGroupID string) {
	o.KeyGroupID = keyGroupID
}

// WithNamespace adds the namespace to the upload keys params
func (o *UploadKeysParams) WithNamespace(namespace string) *UploadKeysParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the upload keys params
func (o *UploadKeysParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UploadKeysParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.File != nil {

		if o.File != nil {

			// form file param file
			if err := r.SetFileParam("file", o.File); err != nil {
				return err
			}

		}

	}

	// path param keyGroupId
	if err := r.SetPathParam("keyGroupId", o.KeyGroupID); err != nil {
		return err
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
