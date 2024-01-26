// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewImportRewardsParams creates a new ImportRewardsParams object
// with the default values initialized.
func NewImportRewardsParams() *ImportRewardsParams {
	var ()
	return &ImportRewardsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportRewardsParamsWithTimeout creates a new ImportRewardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportRewardsParamsWithTimeout(timeout time.Duration) *ImportRewardsParams {
	var ()
	return &ImportRewardsParams{

		timeout: timeout,
	}
}

// NewImportRewardsParamsWithContext creates a new ImportRewardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportRewardsParamsWithContext(ctx context.Context) *ImportRewardsParams {
	var ()
	return &ImportRewardsParams{

		Context: ctx,
	}
}

// NewImportRewardsParamsWithHTTPClient creates a new ImportRewardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportRewardsParamsWithHTTPClient(client *http.Client) *ImportRewardsParams {
	var ()
	return &ImportRewardsParams{
		HTTPClient: client,
	}
}

/*ImportRewardsParams contains all the parameters to send to the API endpoint
for the import rewards operation typically these are written to a http.Request
*/
type ImportRewardsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File*/
	File runtime.NamedReadCloser
	/*Namespace
	  namespace

	*/
	Namespace string
	/*ReplaceExisting
	  replaceExisting

	*/
	ReplaceExisting bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the import rewards params
func (o *ImportRewardsParams) WithTimeout(timeout time.Duration) *ImportRewardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import rewards params
func (o *ImportRewardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import rewards params
func (o *ImportRewardsParams) WithContext(ctx context.Context) *ImportRewardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import rewards params
func (o *ImportRewardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import rewards params
func (o *ImportRewardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import rewards params
func (o *ImportRewardsParams) WithHTTPClient(client *http.Client) *ImportRewardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import rewards params
func (o *ImportRewardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import rewards params
func (o *ImportRewardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImportRewardsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the import rewards params
func (o *ImportRewardsParams) WithFile(file runtime.NamedReadCloser) *ImportRewardsParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import rewards params
func (o *ImportRewardsParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the import rewards params
func (o *ImportRewardsParams) WithNamespace(namespace string) *ImportRewardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import rewards params
func (o *ImportRewardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithReplaceExisting adds the replaceExisting to the import rewards params
func (o *ImportRewardsParams) WithReplaceExisting(replaceExisting bool) *ImportRewardsParams {
	o.SetReplaceExisting(replaceExisting)
	return o
}

// SetReplaceExisting adds the replaceExisting to the import rewards params
func (o *ImportRewardsParams) SetReplaceExisting(replaceExisting bool) {
	o.ReplaceExisting = replaceExisting
}

// WriteToRequest writes these params to a swagger request
func (o *ImportRewardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param replaceExisting
	qrReplaceExisting := o.ReplaceExisting
	qReplaceExisting := swag.FormatBool(qrReplaceExisting)
	if qReplaceExisting != "" {
		if err := r.SetQueryParam("replaceExisting", qReplaceExisting); err != nil {
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
