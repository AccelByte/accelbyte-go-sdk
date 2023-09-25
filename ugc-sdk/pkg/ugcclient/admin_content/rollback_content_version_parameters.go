// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// NewRollbackContentVersionParams creates a new RollbackContentVersionParams object
// with the default values initialized.
func NewRollbackContentVersionParams() *RollbackContentVersionParams {
	var ()
	return &RollbackContentVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRollbackContentVersionParamsWithTimeout creates a new RollbackContentVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRollbackContentVersionParamsWithTimeout(timeout time.Duration) *RollbackContentVersionParams {
	var ()
	return &RollbackContentVersionParams{

		timeout: timeout,
	}
}

// NewRollbackContentVersionParamsWithContext creates a new RollbackContentVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewRollbackContentVersionParamsWithContext(ctx context.Context) *RollbackContentVersionParams {
	var ()
	return &RollbackContentVersionParams{

		Context: ctx,
	}
}

// NewRollbackContentVersionParamsWithHTTPClient creates a new RollbackContentVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRollbackContentVersionParamsWithHTTPClient(client *http.Client) *RollbackContentVersionParams {
	var ()
	return &RollbackContentVersionParams{
		HTTPClient: client,
	}
}

/*RollbackContentVersionParams contains all the parameters to send to the API endpoint
for the rollback content version operation typically these are written to a http.Request
*/
type RollbackContentVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*VersionID
	  version ID

	*/
	VersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the rollback content version params
func (o *RollbackContentVersionParams) WithTimeout(timeout time.Duration) *RollbackContentVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the rollback content version params
func (o *RollbackContentVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the rollback content version params
func (o *RollbackContentVersionParams) WithContext(ctx context.Context) *RollbackContentVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the rollback content version params
func (o *RollbackContentVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the rollback content version params
func (o *RollbackContentVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the rollback content version params
func (o *RollbackContentVersionParams) WithHTTPClient(client *http.Client) *RollbackContentVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the rollback content version params
func (o *RollbackContentVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the rollback content version params
func (o *RollbackContentVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the rollback content version params
func (o *RollbackContentVersionParams) WithContentID(contentID string) *RollbackContentVersionParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the rollback content version params
func (o *RollbackContentVersionParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the rollback content version params
func (o *RollbackContentVersionParams) WithNamespace(namespace string) *RollbackContentVersionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the rollback content version params
func (o *RollbackContentVersionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithVersionID adds the versionID to the rollback content version params
func (o *RollbackContentVersionParams) WithVersionID(versionID string) *RollbackContentVersionParams {
	o.SetVersionID(versionID)
	return o
}

// SetVersionID adds the versionId to the rollback content version params
func (o *RollbackContentVersionParams) SetVersionID(versionID string) {
	o.VersionID = versionID
}

// WriteToRequest writes these params to a swagger request
func (o *RollbackContentVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param versionId
	if err := r.SetPathParam("versionId", o.VersionID); err != nil {
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
