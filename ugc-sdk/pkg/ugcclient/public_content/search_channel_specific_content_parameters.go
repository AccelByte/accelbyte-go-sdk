// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content

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

// NewSearchChannelSpecificContentParams creates a new SearchChannelSpecificContentParams object
// with the default values initialized.
func NewSearchChannelSpecificContentParams() *SearchChannelSpecificContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &SearchChannelSpecificContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewSearchChannelSpecificContentParamsWithTimeout creates a new SearchChannelSpecificContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSearchChannelSpecificContentParamsWithTimeout(timeout time.Duration) *SearchChannelSpecificContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &SearchChannelSpecificContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewSearchChannelSpecificContentParamsWithContext creates a new SearchChannelSpecificContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewSearchChannelSpecificContentParamsWithContext(ctx context.Context) *SearchChannelSpecificContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &SearchChannelSpecificContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewSearchChannelSpecificContentParamsWithHTTPClient creates a new SearchChannelSpecificContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSearchChannelSpecificContentParamsWithHTTPClient(client *http.Client) *SearchChannelSpecificContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &SearchChannelSpecificContentParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*SearchChannelSpecificContentParams contains all the parameters to send to the API endpoint
for the search channel specific content operation typically these are written to a http.Request
*/
type SearchChannelSpecificContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Creator
	  creator name

	*/
	Creator *string
	/*Isofficial
	  filter only official contents (boolean)

	*/
	Isofficial *string
	/*Limit
	  number of content per page

	*/
	Limit *int64
	/*Name
	  content name

	*/
	Name *string
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64
	/*Orderby
	  sorting order: asc, desc. default=desc

	*/
	Orderby *string
	/*Sortby
	  sorting criteria: name,download,like,date. default=date

	*/
	Sortby *string
	/*Subtype
	  content subtype

	*/
	Subtype *string
	/*Tags
	  content tag

	*/
	Tags []string
	/*Type
	  content type

	*/
	Type *string
	/*UserID
	  user ID

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithTimeout(timeout time.Duration) *SearchChannelSpecificContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithContext(ctx context.Context) *SearchChannelSpecificContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithHTTPClient(client *http.Client) *SearchChannelSpecificContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelID adds the channelID to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithChannelID(channelID string) *SearchChannelSpecificContentParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithNamespace(namespace string) *SearchChannelSpecificContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCreator adds the creator to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithCreator(creator *string) *SearchChannelSpecificContentParams {
	o.SetCreator(creator)
	return o
}

// SetCreator adds the creator to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetCreator(creator *string) {
	o.Creator = creator
}

// WithIsofficial adds the isofficial to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithIsofficial(isofficial *string) *SearchChannelSpecificContentParams {
	o.SetIsofficial(isofficial)
	return o
}

// SetIsofficial adds the isofficial to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetIsofficial(isofficial *string) {
	o.Isofficial = isofficial
}

// WithLimit adds the limit to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithLimit(limit *int64) *SearchChannelSpecificContentParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithName(name *string) *SearchChannelSpecificContentParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithOffset(offset *int64) *SearchChannelSpecificContentParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrderby adds the orderby to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithOrderby(orderby *string) *SearchChannelSpecificContentParams {
	o.SetOrderby(orderby)
	return o
}

// SetOrderby adds the orderby to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetOrderby(orderby *string) {
	o.Orderby = orderby
}

// WithSortby adds the sortby to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithSortby(sortby *string) *SearchChannelSpecificContentParams {
	o.SetSortby(sortby)
	return o
}

// SetSortby adds the sortby to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetSortby(sortby *string) {
	o.Sortby = sortby
}

// WithSubtype adds the subtype to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithSubtype(subtype *string) *SearchChannelSpecificContentParams {
	o.SetSubtype(subtype)
	return o
}

// SetSubtype adds the subtype to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetSubtype(subtype *string) {
	o.Subtype = subtype
}

// WithTags adds the tags to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithTags(tags []string) *SearchChannelSpecificContentParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetTags(tags []string) {
	o.Tags = tags
}

// WithType adds the typeVar to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithType(typeVar *string) *SearchChannelSpecificContentParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WithUserID adds the userID to the search channel specific content params
func (o *SearchChannelSpecificContentParams) WithUserID(userID *string) *SearchChannelSpecificContentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the search channel specific content params
func (o *SearchChannelSpecificContentParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SearchChannelSpecificContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Creator != nil {

		// query param creator
		var qrCreator string
		if o.Creator != nil {
			qrCreator = *o.Creator
		}
		qCreator := qrCreator
		if qCreator != "" {
			if err := r.SetQueryParam("creator", qCreator); err != nil {
				return err
			}
		}

	}

	if o.Isofficial != nil {

		// query param isofficial
		var qrIsofficial string
		if o.Isofficial != nil {
			qrIsofficial = *o.Isofficial
		}
		qIsofficial := qrIsofficial
		if qIsofficial != "" {
			if err := r.SetQueryParam("isofficial", qIsofficial); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Orderby != nil {

		// query param orderby
		var qrOrderby string
		if o.Orderby != nil {
			qrOrderby = *o.Orderby
		}
		qOrderby := qrOrderby
		if qOrderby != "" {
			if err := r.SetQueryParam("orderby", qOrderby); err != nil {
				return err
			}
		}

	}

	if o.Sortby != nil {

		// query param sortby
		var qrSortby string
		if o.Sortby != nil {
			qrSortby = *o.Sortby
		}
		qSortby := qrSortby
		if qSortby != "" {
			if err := r.SetQueryParam("sortby", qSortby); err != nil {
				return err
			}
		}

	}

	if o.Subtype != nil {

		// query param subtype
		var qrSubtype string
		if o.Subtype != nil {
			qrSubtype = *o.Subtype
		}
		qSubtype := qrSubtype
		if qSubtype != "" {
			if err := r.SetQueryParam("subtype", qSubtype); err != nil {
				return err
			}
		}

	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
		return err
	}

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
				return err
			}
		}

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
