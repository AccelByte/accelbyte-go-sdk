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
)

// NewPublishSeasonParams creates a new PublishSeasonParams object
// with the default values initialized.
func NewPublishSeasonParams() *PublishSeasonParams {
	var ()
	return &PublishSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublishSeasonParamsWithTimeout creates a new PublishSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublishSeasonParamsWithTimeout(timeout time.Duration) *PublishSeasonParams {
	var ()
	return &PublishSeasonParams{

		timeout: timeout,
	}
}

// NewPublishSeasonParamsWithContext creates a new PublishSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublishSeasonParamsWithContext(ctx context.Context) *PublishSeasonParams {
	var ()
	return &PublishSeasonParams{

		Context: ctx,
	}
}

// NewPublishSeasonParamsWithHTTPClient creates a new PublishSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublishSeasonParamsWithHTTPClient(client *http.Client) *PublishSeasonParams {
	var ()
	return &PublishSeasonParams{
		HTTPClient: client,
	}
}

/*PublishSeasonParams contains all the parameters to send to the API endpoint
for the publish season operation typically these are written to a http.Request
*/
type PublishSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the publish season params
func (o *PublishSeasonParams) WithTimeout(timeout time.Duration) *PublishSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the publish season params
func (o *PublishSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the publish season params
func (o *PublishSeasonParams) WithContext(ctx context.Context) *PublishSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the publish season params
func (o *PublishSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the publish season params
func (o *PublishSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the publish season params
func (o *PublishSeasonParams) WithHTTPClient(client *http.Client) *PublishSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the publish season params
func (o *PublishSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the publish season params
func (o *PublishSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublishSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the publish season params
func (o *PublishSeasonParams) WithNamespace(namespace string) *PublishSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the publish season params
func (o *PublishSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the publish season params
func (o *PublishSeasonParams) WithSeasonID(seasonID string) *PublishSeasonParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the publish season params
func (o *PublishSeasonParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *PublishSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
