// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image_config

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

// NewGetImagePatchesParams creates a new GetImagePatchesParams object
// with the default values initialized.
func NewGetImagePatchesParams() *GetImagePatchesParams {
	var ()
	return &GetImagePatchesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetImagePatchesParamsWithTimeout creates a new GetImagePatchesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetImagePatchesParamsWithTimeout(timeout time.Duration) *GetImagePatchesParams {
	var ()
	return &GetImagePatchesParams{

		timeout: timeout,
	}
}

// NewGetImagePatchesParamsWithContext creates a new GetImagePatchesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetImagePatchesParamsWithContext(ctx context.Context) *GetImagePatchesParams {
	var ()
	return &GetImagePatchesParams{

		Context: ctx,
	}
}

// NewGetImagePatchesParamsWithHTTPClient creates a new GetImagePatchesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetImagePatchesParamsWithHTTPClient(client *http.Client) *GetImagePatchesParams {
	var ()
	return &GetImagePatchesParams{
		HTTPClient: client,
	}
}

/*GetImagePatchesParams contains all the parameters to send to the API endpoint
for the get image patches operation typically these are written to a http.Request
*/
type GetImagePatchesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Version
	  version of the ds

	*/
	Version string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get image patches params
func (o *GetImagePatchesParams) WithTimeout(timeout time.Duration) *GetImagePatchesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get image patches params
func (o *GetImagePatchesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get image patches params
func (o *GetImagePatchesParams) WithContext(ctx context.Context) *GetImagePatchesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get image patches params
func (o *GetImagePatchesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get image patches params
func (o *GetImagePatchesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get image patches params
func (o *GetImagePatchesParams) WithHTTPClient(client *http.Client) *GetImagePatchesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get image patches params
func (o *GetImagePatchesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get image patches params
func (o *GetImagePatchesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetImagePatchesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get image patches params
func (o *GetImagePatchesParams) WithNamespace(namespace string) *GetImagePatchesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get image patches params
func (o *GetImagePatchesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithVersion adds the version to the get image patches params
func (o *GetImagePatchesParams) WithVersion(version string) *GetImagePatchesParams {
	o.SetVersion(version)
	return o
}

// SetVersion adds the version to the get image patches params
func (o *GetImagePatchesParams) SetVersion(version string) {
	o.Version = version
}

// WriteToRequest writes these params to a swagger request
func (o *GetImagePatchesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param version
	if err := r.SetPathParam("version", o.Version); err != nil {
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
