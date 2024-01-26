// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

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

// NewUpdateContentDirectParams creates a new UpdateContentDirectParams object
// with the default values initialized.
func NewUpdateContentDirectParams() *UpdateContentDirectParams {
	var ()
	return &UpdateContentDirectParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateContentDirectParamsWithTimeout creates a new UpdateContentDirectParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateContentDirectParamsWithTimeout(timeout time.Duration) *UpdateContentDirectParams {
	var ()
	return &UpdateContentDirectParams{

		timeout: timeout,
	}
}

// NewUpdateContentDirectParamsWithContext creates a new UpdateContentDirectParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateContentDirectParamsWithContext(ctx context.Context) *UpdateContentDirectParams {
	var ()
	return &UpdateContentDirectParams{

		Context: ctx,
	}
}

// NewUpdateContentDirectParamsWithHTTPClient creates a new UpdateContentDirectParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateContentDirectParamsWithHTTPClient(client *http.Client) *UpdateContentDirectParams {
	var ()
	return &UpdateContentDirectParams{
		HTTPClient: client,
	}
}

/*UpdateContentDirectParams contains all the parameters to send to the API endpoint
for the update content direct operation typically these are written to a http.Request
*/
type UpdateContentDirectParams struct {

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
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update content direct params
func (o *UpdateContentDirectParams) WithTimeout(timeout time.Duration) *UpdateContentDirectParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update content direct params
func (o *UpdateContentDirectParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update content direct params
func (o *UpdateContentDirectParams) WithContext(ctx context.Context) *UpdateContentDirectParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update content direct params
func (o *UpdateContentDirectParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update content direct params
func (o *UpdateContentDirectParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update content direct params
func (o *UpdateContentDirectParams) WithHTTPClient(client *http.Client) *UpdateContentDirectParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update content direct params
func (o *UpdateContentDirectParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update content direct params
func (o *UpdateContentDirectParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateContentDirectParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update content direct params
func (o *UpdateContentDirectParams) WithBody(body *ugcclientmodels.ModelsCreateContentRequest) *UpdateContentDirectParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update content direct params
func (o *UpdateContentDirectParams) SetBody(body *ugcclientmodels.ModelsCreateContentRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the update content direct params
func (o *UpdateContentDirectParams) WithChannelID(channelID string) *UpdateContentDirectParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the update content direct params
func (o *UpdateContentDirectParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the update content direct params
func (o *UpdateContentDirectParams) WithContentID(contentID string) *UpdateContentDirectParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the update content direct params
func (o *UpdateContentDirectParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the update content direct params
func (o *UpdateContentDirectParams) WithNamespace(namespace string) *UpdateContentDirectParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update content direct params
func (o *UpdateContentDirectParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update content direct params
func (o *UpdateContentDirectParams) WithUserID(userID string) *UpdateContentDirectParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update content direct params
func (o *UpdateContentDirectParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateContentDirectParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
