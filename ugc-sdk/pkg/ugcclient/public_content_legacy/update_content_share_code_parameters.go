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

// NewUpdateContentShareCodeParams creates a new UpdateContentShareCodeParams object
// with the default values initialized.
func NewUpdateContentShareCodeParams() *UpdateContentShareCodeParams {
	var ()
	return &UpdateContentShareCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateContentShareCodeParamsWithTimeout creates a new UpdateContentShareCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateContentShareCodeParamsWithTimeout(timeout time.Duration) *UpdateContentShareCodeParams {
	var ()
	return &UpdateContentShareCodeParams{

		timeout: timeout,
	}
}

// NewUpdateContentShareCodeParamsWithContext creates a new UpdateContentShareCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateContentShareCodeParamsWithContext(ctx context.Context) *UpdateContentShareCodeParams {
	var ()
	return &UpdateContentShareCodeParams{

		Context: ctx,
	}
}

// NewUpdateContentShareCodeParamsWithHTTPClient creates a new UpdateContentShareCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateContentShareCodeParamsWithHTTPClient(client *http.Client) *UpdateContentShareCodeParams {
	var ()
	return &UpdateContentShareCodeParams{
		HTTPClient: client,
	}
}

/*UpdateContentShareCodeParams contains all the parameters to send to the API endpoint
for the update content share code operation typically these are written to a http.Request
*/
type UpdateContentShareCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateContentShareCodeRequest
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
}

// WithTimeout adds the timeout to the update content share code params
func (o *UpdateContentShareCodeParams) WithTimeout(timeout time.Duration) *UpdateContentShareCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update content share code params
func (o *UpdateContentShareCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update content share code params
func (o *UpdateContentShareCodeParams) WithContext(ctx context.Context) *UpdateContentShareCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update content share code params
func (o *UpdateContentShareCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update content share code params
func (o *UpdateContentShareCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update content share code params
func (o *UpdateContentShareCodeParams) WithHTTPClient(client *http.Client) *UpdateContentShareCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update content share code params
func (o *UpdateContentShareCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update content share code params
func (o *UpdateContentShareCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update content share code params
func (o *UpdateContentShareCodeParams) WithBody(body *ugcclientmodels.ModelsUpdateContentShareCodeRequest) *UpdateContentShareCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update content share code params
func (o *UpdateContentShareCodeParams) SetBody(body *ugcclientmodels.ModelsUpdateContentShareCodeRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the update content share code params
func (o *UpdateContentShareCodeParams) WithChannelID(channelID string) *UpdateContentShareCodeParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the update content share code params
func (o *UpdateContentShareCodeParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the update content share code params
func (o *UpdateContentShareCodeParams) WithContentID(contentID string) *UpdateContentShareCodeParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the update content share code params
func (o *UpdateContentShareCodeParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the update content share code params
func (o *UpdateContentShareCodeParams) WithNamespace(namespace string) *UpdateContentShareCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update content share code params
func (o *UpdateContentShareCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update content share code params
func (o *UpdateContentShareCodeParams) WithUserID(userID string) *UpdateContentShareCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update content share code params
func (o *UpdateContentShareCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateContentShareCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
