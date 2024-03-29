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

// NewGeneratedUserUploadContentURLParams creates a new GeneratedUserUploadContentURLParams object
// with the default values initialized.
func NewGeneratedUserUploadContentURLParams() *GeneratedUserUploadContentURLParams {
	var (
		categoryDefault = string("default")
	)
	return &GeneratedUserUploadContentURLParams{
		Category: &categoryDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGeneratedUserUploadContentURLParamsWithTimeout creates a new GeneratedUserUploadContentURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGeneratedUserUploadContentURLParamsWithTimeout(timeout time.Duration) *GeneratedUserUploadContentURLParams {
	var (
		categoryDefault = string("default")
	)
	return &GeneratedUserUploadContentURLParams{
		Category: &categoryDefault,

		timeout: timeout,
	}
}

// NewGeneratedUserUploadContentURLParamsWithContext creates a new GeneratedUserUploadContentURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewGeneratedUserUploadContentURLParamsWithContext(ctx context.Context) *GeneratedUserUploadContentURLParams {
	var (
		categoryDefault = string("default")
	)
	return &GeneratedUserUploadContentURLParams{
		Category: &categoryDefault,

		Context: ctx,
	}
}

// NewGeneratedUserUploadContentURLParamsWithHTTPClient creates a new GeneratedUserUploadContentURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGeneratedUserUploadContentURLParamsWithHTTPClient(client *http.Client) *GeneratedUserUploadContentURLParams {
	var (
		categoryDefault = string("default")
	)
	return &GeneratedUserUploadContentURLParams{
		Category:   &categoryDefault,
		HTTPClient: client,
	}
}

/*GeneratedUserUploadContentURLParams contains all the parameters to send to the API endpoint
for the generated user upload content url operation typically these are written to a http.Request
*/
type GeneratedUserUploadContentURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user's id, should follow UUID version 4 without hyphen

	*/
	UserID string
	/*Category
	  Upload category. Supported categories: default, reporting

	*/
	Category *string
	/*FileType
	  one of the these types: jpeg, jpg, png, bmp, gif, mp3, bin, webp, mp4, webm

	*/
	FileType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) WithTimeout(timeout time.Duration) *GeneratedUserUploadContentURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) WithContext(ctx context.Context) *GeneratedUserUploadContentURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) WithHTTPClient(client *http.Client) *GeneratedUserUploadContentURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GeneratedUserUploadContentURLParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) WithNamespace(namespace string) *GeneratedUserUploadContentURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) WithUserID(userID string) *GeneratedUserUploadContentURLParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithCategory adds the category to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) WithCategory(category *string) *GeneratedUserUploadContentURLParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) SetCategory(category *string) {
	o.Category = category
}

// WithFileType adds the fileType to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) WithFileType(fileType string) *GeneratedUserUploadContentURLParams {
	o.SetFileType(fileType)
	return o
}

// SetFileType adds the fileType to the generated user upload content url params
func (o *GeneratedUserUploadContentURLParams) SetFileType(fileType string) {
	o.FileType = fileType
}

// WriteToRequest writes these params to a swagger request
func (o *GeneratedUserUploadContentURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.Category != nil {

		// query param category
		var qrCategory string
		if o.Category != nil {
			qrCategory = *o.Category
		}
		qCategory := qrCategory
		if qCategory != "" {
			if err := r.SetQueryParam("category", qCategory); err != nil {
				return err
			}
		}

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
