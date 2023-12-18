// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifacts

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

// NewArtifactDeleteParams creates a new ArtifactDeleteParams object
// with the default values initialized.
func NewArtifactDeleteParams() *ArtifactDeleteParams {
	var ()
	return &ArtifactDeleteParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewArtifactDeleteParamsWithTimeout creates a new ArtifactDeleteParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewArtifactDeleteParamsWithTimeout(timeout time.Duration) *ArtifactDeleteParams {
	var ()
	return &ArtifactDeleteParams{

		timeout: timeout,
	}
}

// NewArtifactDeleteParamsWithContext creates a new ArtifactDeleteParams object
// with the default values initialized, and the ability to set a context for a request
func NewArtifactDeleteParamsWithContext(ctx context.Context) *ArtifactDeleteParams {
	var ()
	return &ArtifactDeleteParams{

		Context: ctx,
	}
}

// NewArtifactDeleteParamsWithHTTPClient creates a new ArtifactDeleteParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewArtifactDeleteParamsWithHTTPClient(client *http.Client) *ArtifactDeleteParams {
	var ()
	return &ArtifactDeleteParams{
		HTTPClient: client,
	}
}

/*ArtifactDeleteParams contains all the parameters to send to the API endpoint
for the artifact delete operation typically these are written to a http.Request
*/
type ArtifactDeleteParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ArtifactID
	  the id of the artifact

	*/
	ArtifactID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the artifact delete params
func (o *ArtifactDeleteParams) WithTimeout(timeout time.Duration) *ArtifactDeleteParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the artifact delete params
func (o *ArtifactDeleteParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the artifact delete params
func (o *ArtifactDeleteParams) WithContext(ctx context.Context) *ArtifactDeleteParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the artifact delete params
func (o *ArtifactDeleteParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the artifact delete params
func (o *ArtifactDeleteParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the artifact delete params
func (o *ArtifactDeleteParams) WithHTTPClient(client *http.Client) *ArtifactDeleteParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the artifact delete params
func (o *ArtifactDeleteParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the artifact delete params
func (o *ArtifactDeleteParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithArtifactID adds the artifactID to the artifact delete params
func (o *ArtifactDeleteParams) WithArtifactID(artifactID string) *ArtifactDeleteParams {
	o.SetArtifactID(artifactID)
	return o
}

// SetArtifactID adds the artifactId to the artifact delete params
func (o *ArtifactDeleteParams) SetArtifactID(artifactID string) {
	o.ArtifactID = artifactID
}

// WithNamespace adds the namespace to the artifact delete params
func (o *ArtifactDeleteParams) WithNamespace(namespace string) *ArtifactDeleteParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the artifact delete params
func (o *ArtifactDeleteParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ArtifactDeleteParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param artifactID
	if err := r.SetPathParam("artifactID", o.ArtifactID); err != nil {
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
