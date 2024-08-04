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

// NewImagesStorageParams creates a new ImagesStorageParams object
// with the default values initialized.
func NewImagesStorageParams() *ImagesStorageParams {
	var ()
	return &ImagesStorageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImagesStorageParamsWithTimeout creates a new ImagesStorageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImagesStorageParamsWithTimeout(timeout time.Duration) *ImagesStorageParams {
	var ()
	return &ImagesStorageParams{

		timeout: timeout,
	}
}

// NewImagesStorageParamsWithContext creates a new ImagesStorageParams object
// with the default values initialized, and the ability to set a context for a request
func NewImagesStorageParamsWithContext(ctx context.Context) *ImagesStorageParams {
	var ()
	return &ImagesStorageParams{

		Context: ctx,
	}
}

// NewImagesStorageParamsWithHTTPClient creates a new ImagesStorageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImagesStorageParamsWithHTTPClient(client *http.Client) *ImagesStorageParams {
	var ()
	return &ImagesStorageParams{
		HTTPClient: client,
	}
}

/*ImagesStorageParams contains all the parameters to send to the API endpoint
for the images storage operation typically these are written to a http.Request
*/
type ImagesStorageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the images storage params
func (o *ImagesStorageParams) WithTimeout(timeout time.Duration) *ImagesStorageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the images storage params
func (o *ImagesStorageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the images storage params
func (o *ImagesStorageParams) WithContext(ctx context.Context) *ImagesStorageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the images storage params
func (o *ImagesStorageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the images storage params
func (o *ImagesStorageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the images storage params
func (o *ImagesStorageParams) WithHTTPClient(client *http.Client) *ImagesStorageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the images storage params
func (o *ImagesStorageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the images storage params
func (o *ImagesStorageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImagesStorageParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the images storage params
func (o *ImagesStorageParams) WithNamespace(namespace string) *ImagesStorageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the images storage params
func (o *ImagesStorageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImagesStorageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
