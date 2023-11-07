// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// NewPublicGenerateContentUploadURLV2Params creates a new PublicGenerateContentUploadURLV2Params object
// with the default values initialized.
func NewPublicGenerateContentUploadURLV2Params() *PublicGenerateContentUploadURLV2Params {
	var ()
	return &PublicGenerateContentUploadURLV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGenerateContentUploadURLV2ParamsWithTimeout creates a new PublicGenerateContentUploadURLV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGenerateContentUploadURLV2ParamsWithTimeout(timeout time.Duration) *PublicGenerateContentUploadURLV2Params {
	var ()
	return &PublicGenerateContentUploadURLV2Params{

		timeout: timeout,
	}
}

// NewPublicGenerateContentUploadURLV2ParamsWithContext creates a new PublicGenerateContentUploadURLV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGenerateContentUploadURLV2ParamsWithContext(ctx context.Context) *PublicGenerateContentUploadURLV2Params {
	var ()
	return &PublicGenerateContentUploadURLV2Params{

		Context: ctx,
	}
}

// NewPublicGenerateContentUploadURLV2ParamsWithHTTPClient creates a new PublicGenerateContentUploadURLV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGenerateContentUploadURLV2ParamsWithHTTPClient(client *http.Client) *PublicGenerateContentUploadURLV2Params {
	var ()
	return &PublicGenerateContentUploadURLV2Params{
		HTTPClient: client,
	}
}

/*PublicGenerateContentUploadURLV2Params contains all the parameters to send to the API endpoint
for the public generate content upload urlv2 operation typically these are written to a http.Request
*/
type PublicGenerateContentUploadURLV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsGenerateContentUploadURLRequest
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

// WithTimeout adds the timeout to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) WithTimeout(timeout time.Duration) *PublicGenerateContentUploadURLV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) WithContext(ctx context.Context) *PublicGenerateContentUploadURLV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) WithHTTPClient(client *http.Client) *PublicGenerateContentUploadURLV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) WithBody(body *ugcclientmodels.ModelsGenerateContentUploadURLRequest) *PublicGenerateContentUploadURLV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetBody(body *ugcclientmodels.ModelsGenerateContentUploadURLRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) WithChannelID(channelID string) *PublicGenerateContentUploadURLV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) WithContentID(contentID string) *PublicGenerateContentUploadURLV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) WithNamespace(namespace string) *PublicGenerateContentUploadURLV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) WithUserID(userID string) *PublicGenerateContentUploadURLV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public generate content upload urlv2 params
func (o *PublicGenerateContentUploadURLV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGenerateContentUploadURLV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
