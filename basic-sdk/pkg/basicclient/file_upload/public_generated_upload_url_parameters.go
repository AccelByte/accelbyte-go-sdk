// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package file_upload

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

// NewPublicGeneratedUploadURLParams creates a new PublicGeneratedUploadURLParams object
// with the default values initialized.
func NewPublicGeneratedUploadURLParams() *PublicGeneratedUploadURLParams {
	var ()
	return &PublicGeneratedUploadURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGeneratedUploadURLParamsWithTimeout creates a new PublicGeneratedUploadURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGeneratedUploadURLParamsWithTimeout(timeout time.Duration) *PublicGeneratedUploadURLParams {
	var ()
	return &PublicGeneratedUploadURLParams{

		timeout: timeout,
	}
}

// NewPublicGeneratedUploadURLParamsWithContext creates a new PublicGeneratedUploadURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGeneratedUploadURLParamsWithContext(ctx context.Context) *PublicGeneratedUploadURLParams {
	var ()
	return &PublicGeneratedUploadURLParams{

		Context: ctx,
	}
}

// NewPublicGeneratedUploadURLParamsWithHTTPClient creates a new PublicGeneratedUploadURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGeneratedUploadURLParamsWithHTTPClient(client *http.Client) *PublicGeneratedUploadURLParams {
	var ()
	return &PublicGeneratedUploadURLParams{
		HTTPClient: client,
	}
}

/*PublicGeneratedUploadURLParams contains all the parameters to send to the API endpoint
for the public generated upload url operation typically these are written to a http.Request
*/
type PublicGeneratedUploadURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Folder
	  the name of folder where the file will be uploaded, must be between 1-256 characters, all characters allowed no whitespace

	*/
	Folder string
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*FileType
	  one of the these types: jpeg, jpg, png, bmp, gif, mp3, bin, webp

	*/
	FileType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) WithTimeout(timeout time.Duration) *PublicGeneratedUploadURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) WithContext(ctx context.Context) *PublicGeneratedUploadURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) WithHTTPClient(client *http.Client) *PublicGeneratedUploadURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFolder adds the folder to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) WithFolder(folder string) *PublicGeneratedUploadURLParams {
	o.SetFolder(folder)
	return o
}

// SetFolder adds the folder to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) SetFolder(folder string) {
	o.Folder = folder
}

// WithNamespace adds the namespace to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) WithNamespace(namespace string) *PublicGeneratedUploadURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithFileType adds the fileType to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) WithFileType(fileType string) *PublicGeneratedUploadURLParams {
	o.SetFileType(fileType)
	return o
}

// SetFileType adds the fileType to the public generated upload url params
func (o *PublicGeneratedUploadURLParams) SetFileType(fileType string) {
	o.FileType = fileType
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGeneratedUploadURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param folder
	if err := r.SetPathParam("folder", o.Folder); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param fileType
	qrFileType := o.FileType
	qFileType := qrFileType
	if qFileType != "" {
		if err := r.SetQueryParam("fileType", qFileType); err != nil {
			return err
		}
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
