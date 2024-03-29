// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// NewCloneSeasonParams creates a new CloneSeasonParams object
// with the default values initialized.
func NewCloneSeasonParams() *CloneSeasonParams {
	var ()
	return &CloneSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCloneSeasonParamsWithTimeout creates a new CloneSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCloneSeasonParamsWithTimeout(timeout time.Duration) *CloneSeasonParams {
	var ()
	return &CloneSeasonParams{

		timeout: timeout,
	}
}

// NewCloneSeasonParamsWithContext creates a new CloneSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewCloneSeasonParamsWithContext(ctx context.Context) *CloneSeasonParams {
	var ()
	return &CloneSeasonParams{

		Context: ctx,
	}
}

// NewCloneSeasonParamsWithHTTPClient creates a new CloneSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCloneSeasonParamsWithHTTPClient(client *http.Client) *CloneSeasonParams {
	var ()
	return &CloneSeasonParams{
		HTTPClient: client,
	}
}

/*CloneSeasonParams contains all the parameters to send to the API endpoint
for the clone season operation typically these are written to a http.Request
*/
type CloneSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.SeasonCloneRequest
	/*Namespace*/
	Namespace string
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the clone season params
func (o *CloneSeasonParams) WithTimeout(timeout time.Duration) *CloneSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the clone season params
func (o *CloneSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the clone season params
func (o *CloneSeasonParams) WithContext(ctx context.Context) *CloneSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the clone season params
func (o *CloneSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the clone season params
func (o *CloneSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the clone season params
func (o *CloneSeasonParams) WithHTTPClient(client *http.Client) *CloneSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the clone season params
func (o *CloneSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the clone season params
func (o *CloneSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CloneSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the clone season params
func (o *CloneSeasonParams) WithBody(body *seasonpassclientmodels.SeasonCloneRequest) *CloneSeasonParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the clone season params
func (o *CloneSeasonParams) SetBody(body *seasonpassclientmodels.SeasonCloneRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the clone season params
func (o *CloneSeasonParams) WithNamespace(namespace string) *CloneSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the clone season params
func (o *CloneSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the clone season params
func (o *CloneSeasonParams) WithSeasonID(seasonID string) *CloneSeasonParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the clone season params
func (o *CloneSeasonParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *CloneSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
