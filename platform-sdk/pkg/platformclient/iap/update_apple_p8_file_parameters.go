// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewUpdateAppleP8FileParams creates a new UpdateAppleP8FileParams object
// with the default values initialized.
func NewUpdateAppleP8FileParams() *UpdateAppleP8FileParams {
	var ()
	return &UpdateAppleP8FileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateAppleP8FileParamsWithTimeout creates a new UpdateAppleP8FileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateAppleP8FileParamsWithTimeout(timeout time.Duration) *UpdateAppleP8FileParams {
	var ()
	return &UpdateAppleP8FileParams{

		timeout: timeout,
	}
}

// NewUpdateAppleP8FileParamsWithContext creates a new UpdateAppleP8FileParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateAppleP8FileParamsWithContext(ctx context.Context) *UpdateAppleP8FileParams {
	var ()
	return &UpdateAppleP8FileParams{

		Context: ctx,
	}
}

// NewUpdateAppleP8FileParamsWithHTTPClient creates a new UpdateAppleP8FileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateAppleP8FileParamsWithHTTPClient(client *http.Client) *UpdateAppleP8FileParams {
	var ()
	return &UpdateAppleP8FileParams{
		HTTPClient: client,
	}
}

/*UpdateAppleP8FileParams contains all the parameters to send to the API endpoint
for the update apple p8 file operation typically these are written to a http.Request
*/
type UpdateAppleP8FileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File*/
	File runtime.NamedReadCloser
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update apple p8 file params
func (o *UpdateAppleP8FileParams) WithTimeout(timeout time.Duration) *UpdateAppleP8FileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update apple p8 file params
func (o *UpdateAppleP8FileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update apple p8 file params
func (o *UpdateAppleP8FileParams) WithContext(ctx context.Context) *UpdateAppleP8FileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update apple p8 file params
func (o *UpdateAppleP8FileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update apple p8 file params
func (o *UpdateAppleP8FileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update apple p8 file params
func (o *UpdateAppleP8FileParams) WithHTTPClient(client *http.Client) *UpdateAppleP8FileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update apple p8 file params
func (o *UpdateAppleP8FileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update apple p8 file params
func (o *UpdateAppleP8FileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateAppleP8FileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the update apple p8 file params
func (o *UpdateAppleP8FileParams) WithFile(file runtime.NamedReadCloser) *UpdateAppleP8FileParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the update apple p8 file params
func (o *UpdateAppleP8FileParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the update apple p8 file params
func (o *UpdateAppleP8FileParams) WithNamespace(namespace string) *UpdateAppleP8FileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update apple p8 file params
func (o *UpdateAppleP8FileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateAppleP8FileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
