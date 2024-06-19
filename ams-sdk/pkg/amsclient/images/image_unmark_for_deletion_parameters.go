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

// NewImageUnmarkForDeletionParams creates a new ImageUnmarkForDeletionParams object
// with the default values initialized.
func NewImageUnmarkForDeletionParams() *ImageUnmarkForDeletionParams {
	var ()
	return &ImageUnmarkForDeletionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImageUnmarkForDeletionParamsWithTimeout creates a new ImageUnmarkForDeletionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImageUnmarkForDeletionParamsWithTimeout(timeout time.Duration) *ImageUnmarkForDeletionParams {
	var ()
	return &ImageUnmarkForDeletionParams{

		timeout: timeout,
	}
}

// NewImageUnmarkForDeletionParamsWithContext creates a new ImageUnmarkForDeletionParams object
// with the default values initialized, and the ability to set a context for a request
func NewImageUnmarkForDeletionParamsWithContext(ctx context.Context) *ImageUnmarkForDeletionParams {
	var ()
	return &ImageUnmarkForDeletionParams{

		Context: ctx,
	}
}

// NewImageUnmarkForDeletionParamsWithHTTPClient creates a new ImageUnmarkForDeletionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImageUnmarkForDeletionParamsWithHTTPClient(client *http.Client) *ImageUnmarkForDeletionParams {
	var ()
	return &ImageUnmarkForDeletionParams{
		HTTPClient: client,
	}
}

/*ImageUnmarkForDeletionParams contains all the parameters to send to the API endpoint
for the image unmark for deletion operation typically these are written to a http.Request
*/
type ImageUnmarkForDeletionParams struct {

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

// WithTimeout adds the timeout to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) WithTimeout(timeout time.Duration) *ImageUnmarkForDeletionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) WithContext(ctx context.Context) *ImageUnmarkForDeletionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) WithHTTPClient(client *http.Client) *ImageUnmarkForDeletionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImageUnmarkForDeletionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithImageID adds the imageID to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) WithImageID(imageID string) *ImageUnmarkForDeletionParams {
	o.SetImageID(imageID)
	return o
}

// SetImageID adds the imageId to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) SetImageID(imageID string) {
	o.ImageID = imageID
}

// WithNamespace adds the namespace to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) WithNamespace(namespace string) *ImageUnmarkForDeletionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the image unmark for deletion params
func (o *ImageUnmarkForDeletionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImageUnmarkForDeletionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
