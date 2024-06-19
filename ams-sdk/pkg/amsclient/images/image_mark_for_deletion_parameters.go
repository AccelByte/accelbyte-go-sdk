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
)

// NewImageMarkForDeletionParams creates a new ImageMarkForDeletionParams object
// with the default values initialized.
func NewImageMarkForDeletionParams() *ImageMarkForDeletionParams {
	var ()
	return &ImageMarkForDeletionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImageMarkForDeletionParamsWithTimeout creates a new ImageMarkForDeletionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImageMarkForDeletionParamsWithTimeout(timeout time.Duration) *ImageMarkForDeletionParams {
	var ()
	return &ImageMarkForDeletionParams{

		timeout: timeout,
	}
}

// NewImageMarkForDeletionParamsWithContext creates a new ImageMarkForDeletionParams object
// with the default values initialized, and the ability to set a context for a request
func NewImageMarkForDeletionParamsWithContext(ctx context.Context) *ImageMarkForDeletionParams {
	var ()
	return &ImageMarkForDeletionParams{

		Context: ctx,
	}
}

// NewImageMarkForDeletionParamsWithHTTPClient creates a new ImageMarkForDeletionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImageMarkForDeletionParamsWithHTTPClient(client *http.Client) *ImageMarkForDeletionParams {
	var ()
	return &ImageMarkForDeletionParams{
		HTTPClient: client,
	}
}

/*ImageMarkForDeletionParams contains all the parameters to send to the API endpoint
for the image mark for deletion operation typically these are written to a http.Request
*/
type ImageMarkForDeletionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the image mark for deletion params
func (o *ImageMarkForDeletionParams) WithTimeout(timeout time.Duration) *ImageMarkForDeletionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the image mark for deletion params
func (o *ImageMarkForDeletionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the image mark for deletion params
func (o *ImageMarkForDeletionParams) WithContext(ctx context.Context) *ImageMarkForDeletionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the image mark for deletion params
func (o *ImageMarkForDeletionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the image mark for deletion params
func (o *ImageMarkForDeletionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the image mark for deletion params
func (o *ImageMarkForDeletionParams) WithHTTPClient(client *http.Client) *ImageMarkForDeletionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the image mark for deletion params
func (o *ImageMarkForDeletionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the image mark for deletion params
func (o *ImageMarkForDeletionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImageMarkForDeletionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithImageID adds the imageID to the image mark for deletion params
func (o *ImageMarkForDeletionParams) WithImageID(imageID string) *ImageMarkForDeletionParams {
	o.SetImageID(imageID)
	return o
}

// SetImageID adds the imageId to the image mark for deletion params
func (o *ImageMarkForDeletionParams) SetImageID(imageID string) {
	o.ImageID = imageID
}

// WithNamespace adds the namespace to the image mark for deletion params
func (o *ImageMarkForDeletionParams) WithNamespace(namespace string) *ImageMarkForDeletionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the image mark for deletion params
func (o *ImageMarkForDeletionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImageMarkForDeletionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
