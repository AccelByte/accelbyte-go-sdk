// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package images

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// NewImagePatchParams creates a new ImagePatchParams object
// with the default values initialized.
func NewImagePatchParams() *ImagePatchParams {
	var ()
	return &ImagePatchParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImagePatchParamsWithTimeout creates a new ImagePatchParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImagePatchParamsWithTimeout(timeout time.Duration) *ImagePatchParams {
	var ()
	return &ImagePatchParams{

		timeout: timeout,
	}
}

// NewImagePatchParamsWithContext creates a new ImagePatchParams object
// with the default values initialized, and the ability to set a context for a request
func NewImagePatchParamsWithContext(ctx context.Context) *ImagePatchParams {
	var ()
	return &ImagePatchParams{

		Context: ctx,
	}
}

// NewImagePatchParamsWithHTTPClient creates a new ImagePatchParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImagePatchParamsWithHTTPClient(client *http.Client) *ImagePatchParams {
	var ()
	return &ImagePatchParams{
		HTTPClient: client,
	}
}

/*ImagePatchParams contains all the parameters to send to the API endpoint
for the image patch operation typically these are written to a http.Request
*/
type ImagePatchParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIImageUpdate
	/*ImageID
	  the id of the image

	*/
	ImageID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the image patch params
func (o *ImagePatchParams) WithTimeout(timeout time.Duration) *ImagePatchParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the image patch params
func (o *ImagePatchParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the image patch params
func (o *ImagePatchParams) WithContext(ctx context.Context) *ImagePatchParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the image patch params
func (o *ImagePatchParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the image patch params
func (o *ImagePatchParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the image patch params
func (o *ImagePatchParams) WithHTTPClient(client *http.Client) *ImagePatchParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the image patch params
func (o *ImagePatchParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the image patch params
func (o *ImagePatchParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the image patch params
func (o *ImagePatchParams) WithBody(body *amsclientmodels.APIImageUpdate) *ImagePatchParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the image patch params
func (o *ImagePatchParams) SetBody(body *amsclientmodels.APIImageUpdate) {
	o.Body = body
}

// WithImageID adds the imageID to the image patch params
func (o *ImagePatchParams) WithImageID(imageID string) *ImagePatchParams {
	o.SetImageID(imageID)
	return o
}

// SetImageID adds the imageId to the image patch params
func (o *ImagePatchParams) SetImageID(imageID string) {
	o.ImageID = imageID
}

// WithNamespace adds the namespace to the image patch params
func (o *ImagePatchParams) WithNamespace(namespace string) *ImagePatchParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the image patch params
func (o *ImagePatchParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImagePatchParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param imageID
	if err := r.SetPathParam("imageID", o.ImageID); err != nil {
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
