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

// NewArtifactGetURLParams creates a new ArtifactGetURLParams object
// with the default values initialized.
func NewArtifactGetURLParams() *ArtifactGetURLParams {
	var ()
	return &ArtifactGetURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewArtifactGetURLParamsWithTimeout creates a new ArtifactGetURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewArtifactGetURLParamsWithTimeout(timeout time.Duration) *ArtifactGetURLParams {
	var ()
	return &ArtifactGetURLParams{

		timeout: timeout,
	}
}

// NewArtifactGetURLParamsWithContext creates a new ArtifactGetURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewArtifactGetURLParamsWithContext(ctx context.Context) *ArtifactGetURLParams {
	var ()
	return &ArtifactGetURLParams{

		Context: ctx,
	}
}

// NewArtifactGetURLParamsWithHTTPClient creates a new ArtifactGetURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewArtifactGetURLParamsWithHTTPClient(client *http.Client) *ArtifactGetURLParams {
	var ()
	return &ArtifactGetURLParams{
		HTTPClient: client,
	}
}

/*ArtifactGetURLParams contains all the parameters to send to the API endpoint
for the artifact get url operation typically these are written to a http.Request
*/
type ArtifactGetURLParams struct {

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

// WithTimeout adds the timeout to the artifact get url params
func (o *ArtifactGetURLParams) WithTimeout(timeout time.Duration) *ArtifactGetURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the artifact get url params
func (o *ArtifactGetURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the artifact get url params
func (o *ArtifactGetURLParams) WithContext(ctx context.Context) *ArtifactGetURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the artifact get url params
func (o *ArtifactGetURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the artifact get url params
func (o *ArtifactGetURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the artifact get url params
func (o *ArtifactGetURLParams) WithHTTPClient(client *http.Client) *ArtifactGetURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the artifact get url params
func (o *ArtifactGetURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the artifact get url params
func (o *ArtifactGetURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithArtifactID adds the artifactID to the artifact get url params
func (o *ArtifactGetURLParams) WithArtifactID(artifactID string) *ArtifactGetURLParams {
	o.SetArtifactID(artifactID)
	return o
}

// SetArtifactID adds the artifactId to the artifact get url params
func (o *ArtifactGetURLParams) SetArtifactID(artifactID string) {
	o.ArtifactID = artifactID
}

// WithNamespace adds the namespace to the artifact get url params
func (o *ArtifactGetURLParams) WithNamespace(namespace string) *ArtifactGetURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the artifact get url params
func (o *ArtifactGetURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ArtifactGetURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
