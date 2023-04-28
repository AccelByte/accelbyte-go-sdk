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
	"github.com/go-openapi/swag"
)

// NewExportAchievementsParams creates a new ExportAchievementsParams object
// with the default values initialized.
func NewExportAchievementsParams() *ExportAchievementsParams {
	var ()
	return &ExportAchievementsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportAchievementsParamsWithTimeout creates a new ExportAchievementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportAchievementsParamsWithTimeout(timeout time.Duration) *ExportAchievementsParams {
	var ()
	return &ExportAchievementsParams{

		timeout: timeout,
	}
}

// NewExportAchievementsParamsWithContext creates a new ExportAchievementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewExportAchievementsParamsWithContext(ctx context.Context) *ExportAchievementsParams {
	var ()
	return &ExportAchievementsParams{

		Context: ctx,
	}
}

// NewExportAchievementsParamsWithHTTPClient creates a new ExportAchievementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportAchievementsParamsWithHTTPClient(client *http.Client) *ExportAchievementsParams {
	var ()
	return &ExportAchievementsParams{
		HTTPClient: client,
	}
}

/*ExportAchievementsParams contains all the parameters to send to the API endpoint
for the export achievements operation typically these are written to a http.Request
*/
type ExportAchievementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Tags
	  tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the export achievements params
func (o *ExportAchievementsParams) WithTimeout(timeout time.Duration) *ExportAchievementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export achievements params
func (o *ExportAchievementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export achievements params
func (o *ExportAchievementsParams) WithContext(ctx context.Context) *ExportAchievementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export achievements params
func (o *ExportAchievementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export achievements params
func (o *ExportAchievementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export achievements params
func (o *ExportAchievementsParams) WithHTTPClient(client *http.Client) *ExportAchievementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export achievements params
func (o *ExportAchievementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export achievements params
func (o *ExportAchievementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the export achievements params
func (o *ExportAchievementsParams) WithNamespace(namespace string) *ExportAchievementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export achievements params
func (o *ExportAchievementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTags adds the tags to the export achievements params
func (o *ExportAchievementsParams) WithTags(tags []string) *ExportAchievementsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the export achievements params
func (o *ExportAchievementsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *ExportAchievementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
