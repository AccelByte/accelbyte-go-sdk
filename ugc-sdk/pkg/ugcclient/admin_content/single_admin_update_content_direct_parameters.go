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

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewSingleAdminUpdateContentDirectParams creates a new SingleAdminUpdateContentDirectParams object
// with the default values initialized.
func NewSingleAdminUpdateContentDirectParams() *SingleAdminUpdateContentDirectParams {
	var ()
	return &SingleAdminUpdateContentDirectParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminUpdateContentDirectParamsWithTimeout creates a new SingleAdminUpdateContentDirectParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminUpdateContentDirectParamsWithTimeout(timeout time.Duration) *SingleAdminUpdateContentDirectParams {
	var ()
	return &SingleAdminUpdateContentDirectParams{

		timeout: timeout,
	}
}

// NewSingleAdminUpdateContentDirectParamsWithContext creates a new SingleAdminUpdateContentDirectParams object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminUpdateContentDirectParamsWithContext(ctx context.Context) *SingleAdminUpdateContentDirectParams {
	var ()
	return &SingleAdminUpdateContentDirectParams{

		Context: ctx,
	}
}

// NewSingleAdminUpdateContentDirectParamsWithHTTPClient creates a new SingleAdminUpdateContentDirectParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminUpdateContentDirectParamsWithHTTPClient(client *http.Client) *SingleAdminUpdateContentDirectParams {
	var ()
	return &SingleAdminUpdateContentDirectParams{
		HTTPClient: client,
	}
}

/*SingleAdminUpdateContentDirectParams contains all the parameters to send to the API endpoint
for the single admin update content direct operation typically these are written to a http.Request
*/
type SingleAdminUpdateContentDirectParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateContentRequest
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*ContentID
	  content ID

	*/
	ContentID string
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

// WithTimeout adds the timeout to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) WithTimeout(timeout time.Duration) *SingleAdminUpdateContentDirectParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) WithContext(ctx context.Context) *SingleAdminUpdateContentDirectParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) WithHTTPClient(client *http.Client) *SingleAdminUpdateContentDirectParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SingleAdminUpdateContentDirectParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) WithBody(body *ugcclientmodels.ModelsCreateContentRequest) *SingleAdminUpdateContentDirectParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) SetBody(body *ugcclientmodels.ModelsCreateContentRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) WithChannelID(channelID string) *SingleAdminUpdateContentDirectParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) WithContentID(contentID string) *SingleAdminUpdateContentDirectParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) WithNamespace(namespace string) *SingleAdminUpdateContentDirectParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin update content direct params
func (o *SingleAdminUpdateContentDirectParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminUpdateContentDirectParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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
