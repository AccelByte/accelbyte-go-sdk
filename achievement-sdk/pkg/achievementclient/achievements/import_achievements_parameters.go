// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievements

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

// NewImportAchievementsParams creates a new ImportAchievementsParams object
// with the default values initialized.
func NewImportAchievementsParams() *ImportAchievementsParams {
	var ()
	return &ImportAchievementsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportAchievementsParamsWithTimeout creates a new ImportAchievementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportAchievementsParamsWithTimeout(timeout time.Duration) *ImportAchievementsParams {
	var ()
	return &ImportAchievementsParams{

		timeout: timeout,
	}
}

// NewImportAchievementsParamsWithContext creates a new ImportAchievementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportAchievementsParamsWithContext(ctx context.Context) *ImportAchievementsParams {
	var ()
	return &ImportAchievementsParams{

		Context: ctx,
	}
}

// NewImportAchievementsParamsWithHTTPClient creates a new ImportAchievementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportAchievementsParamsWithHTTPClient(client *http.Client) *ImportAchievementsParams {
	var ()
	return &ImportAchievementsParams{
		HTTPClient: client,
	}
}

/*ImportAchievementsParams contains all the parameters to send to the API endpoint
for the import achievements operation typically these are written to a http.Request
*/
type ImportAchievementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File
	  file to be imported

	*/
	File runtime.NamedReadCloser
	/*Strategy
	  strategy for import

	*/
	Strategy *string
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

// WithTimeout adds the timeout to the import achievements params
func (o *ImportAchievementsParams) WithTimeout(timeout time.Duration) *ImportAchievementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import achievements params
func (o *ImportAchievementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import achievements params
func (o *ImportAchievementsParams) WithContext(ctx context.Context) *ImportAchievementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import achievements params
func (o *ImportAchievementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import achievements params
func (o *ImportAchievementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import achievements params
func (o *ImportAchievementsParams) WithHTTPClient(client *http.Client) *ImportAchievementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import achievements params
func (o *ImportAchievementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import achievements params
func (o *ImportAchievementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImportAchievementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the import achievements params
func (o *ImportAchievementsParams) WithFile(file runtime.NamedReadCloser) *ImportAchievementsParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import achievements params
func (o *ImportAchievementsParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithStrategy adds the strategy to the import achievements params
func (o *ImportAchievementsParams) WithStrategy(strategy *string) *ImportAchievementsParams {
	o.SetStrategy(strategy)
	return o
}

// SetStrategy adds the strategy to the import achievements params
func (o *ImportAchievementsParams) SetStrategy(strategy *string) {
	o.Strategy = strategy
}

// WithNamespace adds the namespace to the import achievements params
func (o *ImportAchievementsParams) WithNamespace(namespace string) *ImportAchievementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import achievements params
func (o *ImportAchievementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImportAchievementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Strategy != nil {

		// form param strategy
		var frStrategy string
		if o.Strategy != nil {
			frStrategy = *o.Strategy
		}
		fStrategy := frStrategy
		if fStrategy != "" {
			if err := r.SetFormParam("strategy", fStrategy); err != nil {
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
